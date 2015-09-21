
public interface GroupProtocol 
{
  public    void  add(FeatureProtocol f); 
  public    void  replaceShape(String id, PShape s);
  public    void  remove(String id);
}


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