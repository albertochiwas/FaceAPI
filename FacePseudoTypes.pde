// typealias Coord = int

public enum Action
{
    closeEye   (0),
    openEye    (1),
    openMouth  (2),
    closeMouth (3);

  private final int value;
  
  Action(int num) {
    this.value = num;
  }
  
  public int rawValue() {
    return this.value;
  }   
}


public interface FeatureState { } // Feature object state http://bit.ly/1LGH26j

public enum BasicState implements FeatureState { // Base class - Generic states 
   Undefined  (0),
   Open       (1),  
   Close      (2);

  private final int value;
  
  BasicState(int num) {
    this.value = num;
  }
  
  public int rawValue() {
    return this.value;
  }
}

//public enum MouthState implements FeatureState { // Mouth class
//  Undefined,
//  Open,
//  Smile,
//  Angry,
//  Close,
//  TongueOut
//}

public enum FeatureID 
{
  LeftBrow  (0), // Feature.values()
  RightBrow (1),
  LeftEye   (2),  
  RightEye  (3),
  Mouth     (4),
  Tongue    (5);
  
  private final int id;
  
  FeatureID(int num) {
    this.id = num;
  }
  
/*
   for (Feature p : Feature.values()) {
     println(p); println(p.rawValue());
   } 
*/
  public int rawValue() {
    return this.id;
  }
}