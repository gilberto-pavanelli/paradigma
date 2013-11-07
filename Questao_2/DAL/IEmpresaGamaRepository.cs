using System;
using System.Collections.Generic;
namespace Questao_2
{
    public interface IEmpresaGamaRepository : IDisposable
    {
        IEnumerable<Terceirizado> RetornaTerceirizados();
        IEnumerable<Terceirizado> RetornaTerceirizados(String sSortExpression);

       

        void InsereTerceirizado(Terceirizado oTerceirizado);

       
        void AtualizaTerceirizado(Terceirizado oTerceirizado);

        void DeletaTerceirizado(Terceirizado oTerceirizado);

        IEnumerable<Concursado> RetornaConcursados();
        IEnumerable<Concursado> RetornaConcursados(String sSortExpression);



        void InsereConcursado(Concursado oConcursado);


        void AtualizaConcursado(Concursado oConcursado);

        void DeletaConcursado(Concursado oConcursado);


    }
}
