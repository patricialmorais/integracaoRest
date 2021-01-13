public class StringArrayTest {
    
    public static List<String> generateStringArray (Integer numSeq){
        List<String> generateString = new List<String>();
        Integer numTeste = 0;
        for(numTeste = 0;numTeste<numSeq;numTeste++){
            generateString.add('teste' + numTeste);
            System.debug('teste' + numTeste);
        }
        return generateString;
    }
}