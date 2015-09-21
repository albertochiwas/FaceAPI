# FaceAPI
Avatar Face API

To create your own face avatar just change or derive FaceGroup & AnimatedFeature classes as showed in [AvatarFace](https://github.com/albertochiwas/FaceAPI/blob/master/AvatarFace.pde) file.

To write your own application logic change draw & mousePressed code at [FaceAPI](https://github.com/albertochiwas/FaceAPI/blob/master/FaceAPI.pde) file.

## API Summary
* To create an avatar face: `AvatarFace face = new AvatarFace();``
* To change a feature state: `face.change(FeatureID.Mouth,Action.closeMouth);` 
* To draw the face: `face.draw(x,y);`
