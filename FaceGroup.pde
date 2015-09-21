
public interface GroupProtocol 
{
  public    void  add(FeatureProtocol f); 
  public    void  replaceShape(String id, PShape s);
  public    void  remove(String id);
}

/**
  FaceGroup is a container of animated face features, where you can add & remove shapes
*/
public class FaceGroup extends BasicFeature implements GroupProtocol
{
  protected int getIndex(String id) {
    return shape.getChildIndex(shape.getChild(id));
  }
    
  public FaceGroup() {
    super();
    shape = createShape(GROUP);
  }

  public FaceGroup(String id) {
    super(id);
    shape = createShape(GROUP);
  }

  protected void addShape(String id, PShape s) {
    shape.addChild(s); //<>//
    shape.addName(id, s);    
  }
  
  /**
      Add a feature object to the face cointainer using its id and corresponding shape
      
      @param f    the animated face feature initialized with a valid id & shape
      @return     none
      @see        FeaturedProtocol
  */
  public void add(FeatureProtocol f) {
    addShape(f.getID(), f.getShape()); //<>//
  }
  
  public void replaceShape(String id, PShape s) {
    remove(id); //<>//
    addShape(id,s);
  }

  public void remove(String id) { //<>//
    shape.removeChild(getIndex(id));
  }
} // FaceGroup //<>// //<>//