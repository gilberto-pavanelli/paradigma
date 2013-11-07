using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Questao_2
{
  
    public class EmpresaGamaBLL : IDisposable
    {
        private IEmpresaGamaRepository _empresaGamaRepository;

        public EmpresaGamaBLL()
        {
            this._empresaGamaRepository = new EmpresaGamaRepository();
        }
        public EmpresaGamaBLL(IEmpresaGamaRepository empresaGamaRepository)
        {
            this._empresaGamaRepository = empresaGamaRepository;
        }

        public IEnumerable<Terceirizado> RetornaTerceirizados()
        {
            return _empresaGamaRepository.RetornaTerceirizados();
        }
      



        public void InsereTerceirizados(Terceirizado oTerceirizado)
        {
            try
            {
                _empresaGamaRepository.InsereTerceirizado(oTerceirizado);
            }
            catch (Exception ex)
            {
                // tratar erro
                throw ex;
            }
        }

       
        public void AtualizaTerceirizado(Terceirizado oTerceirizado)
        {
            try
            {
                _empresaGamaRepository.AtualizaTerceirizado(oTerceirizado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void DeletaTerceirizado(Terceirizado oTerceirizado)
        {
            try
            {
                _empresaGamaRepository.DeletaTerceirizado(oTerceirizado);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public IEnumerable<Concursado> RetornaConcursados()
        {
            return _empresaGamaRepository.RetornaConcursados();
        }




        public void InsereConcursados(Concursado oConcursado)
        {
            try
            {
                _empresaGamaRepository.InsereConcursado(oConcursado);
            }
            catch (Exception ex)
            {
                // tratar erro
                throw ex;
            }
        }


        public void AtualizaConcursado(Concursado oConcursado)
        {
            try
            {
                _empresaGamaRepository.AtualizaConcursado(oConcursado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public void DeletaConcursado(Concursado oConcursado)
        {
            try
            {
                _empresaGamaRepository.DeletaConcursado(oConcursado);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        private bool disposedValue = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposedValue)
            {
                if (disposing)
                {
                    _empresaGamaRepository.Dispose();
                }
            }
            this.disposedValue = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}