package eds.academico;

/**
 *
 * @author J&L
 */
public class EDSAcademico {
    public static void main(String[] args) 
    {

        //Instaciar professor
        //na classe professor o public professor ( ? ? ? ) precisa seguir a orden
       Professor prof = new Professor("123",1,"Denise Neves"); //primeiro a classe depois objeto
       System.out.print(prof.getRf()+"-"+prof.getNome()+ "-");
       if(prof.getTitulacao()==1){
       System.out.println(" Especialista: " + prof.getTitulacao());
       }
       //instaciar curso - aluno
        Curso curso=new Curso("1","ADS","M");
        Curso curso1=new Curso("2","GE","N");
        Aluno aluno=new Aluno("Xuxa","1111",curso);//mesmo  locacao dos parametros classe public aluno
        System.out.println("\n"+aluno.getRa()+"-"+aluno.getNome()+"-"+aluno.getCurso().getNome());//associacao de objetos
        
        //instaciar outro aluno
        Aluno aluno2=new Aluno("Luciano","22222",curso1);//mesmo  locacao dos parametros classe public aluno
        System.out.println("\n"+aluno2.getRa()+"-"+aluno2.getNome()+"-"+aluno2.getCurso().getNome());
    }   
    
}


