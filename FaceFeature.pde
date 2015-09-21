public interface FeatureProtocol // Generic Abstract Feature
{
  public        void  position(int x, int y);
  public      String  getID();
  public      PShape  getShape();
  public        void  draw();  
}


public interface AnimatedProtocol
{
  public      PShape  open();
  public      PShape  close();
  public  BasicState  status();
}


public abstract class BasicFeature implements FeatureProtocol // Generic Abstract base class for FaceGroup & AnimatedFeature
{
// No usable instance, user must derive class, see AnimatedFeature

   protected     PShape  shape;
   protected     String  id;
   protected        int  x, y;
   
  public BasicFeature() {
    position(0,0);
    id = null;
    shape = null;
  }

  public BasicFeature(String id) {
    position(0,0);
    this.id = id;
    this.shape = null;
  }

  public BasicFeature(String id, int x, int y) {
    position(x,y);
    this.id = id;
    this.shape = null;
  }
 
  public String getID() {
    return id;
  }
  
  public void position(int x, int y) {
    this.x = x;
    this.y = y;
  }

  public PShape getShape() {
    return shape;
  }
  
  public void draw() {
    shape(this.shape, this.x, this.y);
  }
} // BasicFeature


public class AnimatedFeature extends BasicFeature implements AnimatedProtocol
{
   protected BasicState  state;
   
  public AnimatedFeature() {
    super();
    state = BasicState.Undefined;
  }

  public AnimatedFeature(String id) {
    super(id);
    state = BasicState.Undefined;
  }

  public AnimatedFeature(String id, int x, int y) {
    super(id,x,y);
    state = BasicState.Undefined;
  }
 
  public PShape open() {
    state = BasicState.Open;
    return shape;
  } 

  public PShape close() {
    state = BasicState.Close;
    return shape;
  }
  
  public BasicState status() {
    return state;
  }
} // AnimatedFeature