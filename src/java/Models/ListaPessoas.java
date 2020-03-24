
package Models;

import java.util.ArrayList;

/**
 *
 * @author Gomes
 */
public class ListaPessoas {
    
    private ArrayList<Pessoa> pessoas; 

    public ListaPessoas() {
        this.pessoas  = new ArrayList<Pessoa>();
    }

    public ArrayList<Pessoa> getPessoas() {
        return pessoas;
    }

    public void setPessoas(ArrayList<Pessoa> pessoas) {
        this.pessoas = pessoas;
    }
    
    
}
