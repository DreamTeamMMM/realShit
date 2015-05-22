if (BABYLON.Engine.isSupported()) {
 
            var canvas = document.getElementById("canvas");
            var engine = new BABYLON.Engine(canvas, true);

            // Resize the babylon engine when the window is resized
            window.addEventListener("resize", function () {
                if (engine) {
                    engine.resize();
                }
            },false);

            //imports the .json file containing the path information
            $.getJSON("script/pathHelp1.json", function(data){
            //helpPath=data.plan2;
            jsonPath=data.Hus1;
            });

            var helpPath=[];
            var pos;
            //var stairs;
            var red = new BABYLON.Color3.FromInts(255, 125, 125);
            var yellow = new BABYLON.Color3.FromInts(255,255,0);
            var blue =  new BABYLON.Color3.FromInts(70, 180, 255);
            var pathColor= new BABYLON.Color3.FromInts(50,50, 255);
    //imports the .babylon object created with blender
    var importer = function(scene, floor, path){
        BABYLON.SceneLoader.ImportMesh("", "script/", path, scene, function (newMeshes, particleSystems) {
            //console.log(helpPath)
            //stairs = new BABYLON.Texture("script/skybox/stairs-256.png", scene);
            for(var i=0; i<newMeshes.length;i++){
                var temp = newMeshes[i];
                //temp.scaling.x=1;
          //     if(floor ===0 || floor === 5){
          //     temp.scaling.x=1;
          //     temp.scaling.y=0.4;
          //     temp.scaling.z=1;
          // }
                //temp.scaling.z=1;
                temp.position.y=0.1+(floor-1)*2.2;
                temp.position.z+=floor*1.1
                if(floor === 3){
                	temp.position.x -=0.2;
                }
                //temp.name = "P1"+(floor+1)+i;
                temp.material = new BABYLON.StandardMaterial("pol", scene);
    //temp.material.diffuseColor = BABYLON.Color3.FromInts(193, 181, 151);
                temp.material.specularColor = BABYLON.Color3.Black();
                //temp.material.diffuseColor = BABYLON.Color3.FromInts(210, 210, 210);
                

                
            
                //temp.material.ambientColor = BABYLON.Color3.Black();

                //temp.isVisible=false;
                if(temp.name.substring(0,1) === "K"){
                    temp.position.y+=0.05;
                    temp.material.diffuseColor = pathColor;
                    temp.isVisible=false;
                    temp.isPickable=false;
                    temp.name= "K"+floor+temp.name.substring(1);
                }

                if(temp.name.substring(0,1) === "T"){
                    temp.position.y+=0.02;
                    temp.material.diffuseColor = blue;
                    temp.name= "T"+"1"+floor+temp.name.substring(1);
                }

                if(temp.name.substring(0,1) === "H"){
                    temp.position.y+=0.02;
                    temp.material.diffuseColor = blue;
                    temp.name= "H"+"1"+floor+temp.name.substring(1);
                }
                if(temp.name.substring(0,3) === "Pla"){
                    //temp.position.y+=0.1;
                    if(floor === 5){
                        temp.scaling.x=0.95;
                        temp.scaling.z=0.95;
                    }
                    temp.isPickable=false;
                    //temp.material.diffuseColor = new BABYLON.Color3.FromInts(175, 175, 175);
                    temp.material.diffuseColor = new BABYLON.Color3.FromInts(180, 180, 180);
                }
                if(temp.name.substring(0,1) === "P" && temp.name.substring(0,3) !== "Pla"){
                    temp.material.alpha=1;
                    temp.name= "P"+"1"+floor+temp.name.substring(1);
                    temp.material.diffuseColor = red;

                }
                /*for(var j=0; j<helpPath.length;j++){
                    if(temp.name=)
                }*/
                temp.parent = scene.getMeshByName("floor"+floor);
            };
        });
    }    
    
    var startRoom;
    var endRoom;
    var nodes;
    var stairObj =[];
    var navigationByTxt = function(scene){
        document.getElementById("startNav").onclick = function(){
                hideFreeRooms();
                var start = document.getElementById("txt-start").value;
                var end = document.getElementById("txt-end").value;
                helpNav(start,end,scene);
        }         
    }

    var selectedRooms = [];
    var selectRoom = function(scene){
        scene.onPointerDown = function(evt,picked){
            //console.log("pick");
          if(picked.pickedMesh !== null && picked.pickedMesh.name.substring(0,1) === "P"){
          selectedRooms.push(picked.pickedMesh.name);
      }
    };
}

    var navigationByClick = function(scene){
        if(selectedRooms.length > 0){
            //console.log("navClick");
            var toDisplay = selectedRooms[0];
            document.getElementById("Rname").value = toDisplay;
            showRoom(toDisplay);
            selectedRooms = [];
            resetColors();
            console.log(scene.activeCamera.alpha);
            console.log(scene.activeCamera.beta);
        }
    }

    var freeRoomList = [];
    var displayFreeRooms = function(scene){
            //console.log("displayFreeRooms")
           freeRoomList = allRoomList;
           showFreeRooms();       
    }

    
    var showFreeRooms = function(){
        for(var i=0;i<freeRoomList.length;i++){
            var freeRoom = scene.getMeshByName(freeRoomList[i]);
            alterColor(freeRoom, yellow);
            //console.log("showFreeRooms "+ freeRoomList[i]);
        }
    }

    var hideFreeRooms = function(){
        for(var i=0;i<freeRoomList.length;i++){
            var freeRoom = scene.getMeshByName(freeRoomList[i]);
            alterColor(freeRoom, red);
            //console.log("HideFreeRooms "+ freeRoomList[i]);
        }
        resetColors();
    }

    var resetColors = function(){
        if(startRoom!==undefined){
            alterColor(startRoom, red);
        }
        if(endRoom!==undefined){        
            alterColor(endRoom, red);
        }
        if(stairObj!== undefined){
            while(stairObj.length>0){
            alterColor(stairObj.pop(), blue);
        }
        }
        if(startRoom!==undefined && endRoom!==undefined && nodes!== undefined){
            for(i=0; i<nodes.length;i++){
                    //console.log(nodes[i]);
                    nodes[i].isVisible=false;
                    removePath(scene);
                }

        }
    }

    var helpNav = function(start,end,scene){
    resetColors();
    start = start.toUpperCase();
    end = end.toUpperCase();
    if(start!=="" && end!=="" && start.substring(0,1) ==="P" && end.substring(0,1) ==="P"){
                //console.log(start);
                //console.log(end);
                startRoom = scene.getMeshByName(start);
                endRoom = scene.getMeshByName(end);
                var toRender=[];
                if(startRoom!==null && endRoom!==null){
                    alterColor(startRoom, BABYLON.Color3.FromInts(255, 0, 0));
                    alterColor(endRoom, BABYLON.Color3.FromInts(127, 0, 255));

                if(start.substring(2,3) !== end.substring(2,3)){
                       var sPos = start.substring(2,3); 
                       var ePos = end.substring(2,3); 
                       var path= planToPlan(start, end);
                       var pathStairs = path[1];
                       for(var i=0; i<pathStairs.length; i++){
                        var stairToColor = scene.getMeshByName(pathStairs[i]);
                        alterColor(stairToColor, pathColor);
                        stairObj.push(stairToColor);
                        pathStairs[i] = stairToColor.position;
                       }
                       pos = sPos;
                       var nodes1 = getNode(path[0], scene);
                       pos = ePos; 
                       var nodes2 = getNode(path[2], scene);
                       nodes = nodes1.concat(nodes2);
                       for(i=0; i<nodes.length;i++){
                            //console.log(nodes[i]);
                            nodes[i].isVisible=true;
                        }
                        pos = sPos;
                       var way1 = matchNode(path[0], scene);
                        pos = ePos;
                       var way2 = matchNode(path[2], scene);
                       toRender = way1.concat(pathStairs).concat(way2);
                       toRender.unshift(startRoom.position);
                       toRender.push(endRoom.position);
                       drawPath(toRender,scene);
                }else{
                //removePath(scene);
                //pathFinding(startRoom,endRoom,scene);*/
                 //calls the pathfinding algorithm
                pos = start.substring(2,3); 
                toRender = pathSamePlan(start,end);
                console.log(toRender);
                nodes = getNode(toRender,scene);
                for(i=0; i<nodes.length;i++){
                    //console.log(nodes[i]);
                    nodes[i].isVisible=true;
                }
                toRender = matchNode(toRender,scene);
                toRender.unshift(startRoom.position);
                toRender.push(endRoom.position);
                drawPath(toRender,scene);
                 }
      }
    }
   }

    var pathSamePlan = function(st,en){
                
                helpPath = jsonPath[pos-1];           //choose the right floor

                var startNode=roomToNode(st);
                var endNode=roomToNode(en);
                //console.log("PSP: start= "+startNode.name+ "\nend= "+endNode.name);
                return findPath(startNode, endNode);
    }

    var planToPlan = function(s,e){
        var toReturn;
        pos = s.substring(2,3);
        var oldPos = parseInt(s.substring(2,3));
        var startNav1=pathSamePlan(s,"T1"+pos+""+1);
        var startNav2=pathSamePlan(s,"T1"+pos+""+3);

        pos = e.substring(2,3);
        var endNav1 = pathSamePlan("T1"+pos+""+1, e);
        var endNav2 = pathSamePlan("T1"+pos+""+3, e); 
        var newPos = parseInt(e.substring(2,3));

        var stairs1=[];
        var stairs2=[];
        if(oldPos<newPos){
        for(oldPos; oldPos<=newPos; oldPos++){
            stairs1.push("T1"+oldPos+""+1)
            stairs2.push("T1"+oldPos+""+3)
            }
        } else {
        for(newPos; newPos<=oldPos; newPos++){
            stairs1.push("T1"+newPos+""+1)
            stairs2.push("T1"+newPos+""+3)
            }
        }

        var nav1 = startNav1.length + endNav1.length;
        var nav2 = startNav2.length + endNav2.length;

        if(nav1<=nav2){
            return [startNav1, stairs1, endNav1];
        } else{
            return [startNav2, stairs2, endNav2];
    }
}



    var createScene = function () {
    //scene
    var scene = new BABYLON.Scene(engine);
    
    //camera
    var camera = new BABYLON.ArcRotateCamera("Camera", 0, 0, 22, BABYLON.Vector3.Zero(), scene);
    camera.attachControl(canvas);
    camera.setPosition(new BABYLON.Vector3(10,8,-14))
    //camera collision
    camera.lowerBetaLimit =0.6;
    camera.upperBetaLimit = 1.5;
    camera.lowerAlphaLimit = 3.4;
    camera.upperAlphaLimit = 6.2;
    camera.collisionRadius = new BABYLON.Vector3(0.1, 0.1, 0.1);
    camera.checkCollisions = true;
    camera.lowerRadiusLimit = 10;
    camera.upperRadiusLimit=30;
    camera.angularSensibility = 2500;
    camera.pinchPrecision = 20;
    //light
    var light = new BABYLON.HemisphericLight("hemi", new BABYLON.Vector3(0,1,0), scene);
   
    //ground
    var ground = BABYLON.Mesh.CreateGround("ground", 100, 100, 25, scene);
    ground.material = new BABYLON.StandardMaterial("ground", scene);
    ground.material.diffuseColor = BABYLON.Color3.FromInts(210, 210, 210);
    //ground.material.diffuseColor = BABYLON.Color3.White();
    ground.material.specularColor = BABYLON.Color3.Black();
    //ground.material.wireframe = true;
    ground.checkCollisions = true;
    ground.isPickable = false;

	engine.displayLoadingUI();
    var numOfPlans = 5;
    for(i=0;i<numOfPlans;i++){
        globe = new BABYLON.Mesh("floor"+(i+1), scene);
        globe.isVisible = false;
        globe.position.x=0;
        globe.position.y=0;
        globe.position.z=0;
        importer(scene,(i+1), "Hus1.Plan"+(i+1)+".babylon");  
       // importer(scene,i, "scene.babylon");
    }
    camera.target = new BABYLON.Vector3(0, 3.5, 0);
    engine.hideLoadingUI();

    return scene;
}

            var scene = createScene();

            //BABYLON.SceneOptimizer.OptimizeAsync(scene);

            var renderLoop = function () {
            scene.render();
            };
            engine.runRenderLoop(renderLoop);

            scene.beforeRender = function() {
            selectRoom(scene);    
            navigationByClick(scene);
            navigationByTxt(scene);
            //displayFreeRooms(scene);
            };
}