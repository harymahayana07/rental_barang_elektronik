

package snake;


import javax.swing.ImageIcon;
import javax.swing.JFrame;
public class Ular extends JFrame{
    public Ular() {

        add(new Arena());    
        setResizable(false);
        pack();
        setTitle("Snake");
        ImageIcon icon = new ImageIcon("image/snake.png");
        setIconImage(icon.getImage());
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        
    }
}
