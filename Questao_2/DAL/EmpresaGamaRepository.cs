using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Objects;
using System.Data;
using System.Data.Objects.DataClasses;

namespace Questao_2
{
    public class EmpresaGamaRepository : IDisposable, IEmpresaGamaRepository
    {
        ASPNETDBEntities _context = new ASPNETDBEntities();


        public EmpresaGamaRepository()
        {
            _context.Funcionarios.MergeOption = MergeOption.NoTracking;
            //_context.Categorias.MergeOption = MergeOption.NoTracking;

        }


        public IEnumerable<Terceirizado> RetornaTerceirizados()
        {
            return RetornaTerceirizados("");
        }
        public IEnumerable<Terceirizado> RetornaTerceirizados(String sSortExpression)
        {
            if (String.IsNullOrWhiteSpace(sSortExpression))
            {
                var result = _context.Funcionarios.OfType<Terceirizado>().OrderBy(f => f.Nome).ToList();
                return result;
            }
            return _context.Funcionarios.OfType<Terceirizado>().OrderBy("it." + sSortExpression).ToList();
        }

        public void InsereTerceirizado(Terceirizado oTerceirizado)
        {
            oTerceirizado.id_Funcionario = Guid.NewGuid();
            _context.AddToFuncionarios(oTerceirizado);
            SaveChanges();
        }

       

        //}
        public void AtualizaTerceirizado(Terceirizado oTerceirizado)
        {
            try
            {
                Terceirizado terceirizado = (Terceirizado)_context.Funcionarios.Where(f => f.id_Funcionario == oTerceirizado.id_Funcionario).SingleOrDefault();
                _context.Funcionarios.Attach(terceirizado);

                terceirizado.Nome = oTerceirizado.Nome;
                terceirizado.Salario = oTerceirizado.Salario;
                terceirizado.AuxilioFaculdade = oTerceirizado.AuxilioFaculdade;
                terceirizado.DataAdmissao = oTerceirizado.DataAdmissao;
                terceirizado.DataNascimento = oTerceirizado.DataNascimento;
                terceirizado.ValeRefeicao = oTerceirizado.ValeRefeicao;
                terceirizado.ValeTransporte = oTerceirizado.ValeTransporte;

                _context.SaveChanges();
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
                _context.Funcionarios.Attach(oTerceirizado);
                _context.Funcionarios.DeleteObject(oTerceirizado);
                SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public IEnumerable<Concursado> RetornaConcursados()
        {
            return RetornaConcursados("");
        }
        public IEnumerable<Concursado> RetornaConcursados(String sSortExpression)
        {
            if (String.IsNullOrWhiteSpace(sSortExpression))
            {
                var result = _context.Funcionarios.OfType<Concursado>().OrderBy(f => f.Nome).ToList();
                return result;
            }
            return _context.Funcionarios.OfType<Concursado>().OrderBy("it." + sSortExpression).ToList();
        }

        public void InsereConcursado(Concursado oConcursado)
        {
            oConcursado.id_Funcionario = Guid.NewGuid();
            _context.AddToFuncionarios(oConcursado);
            SaveChanges();
        }



        //}
        public void AtualizaConcursado(Concursado oConcursado)
        {
            try
            {
                Concursado Concursado = (Concursado)_context.Funcionarios.Where(f => f.id_Funcionario == oConcursado.id_Funcionario).SingleOrDefault();
                _context.Funcionarios.Attach(Concursado);

                Concursado.Nome = oConcursado.Nome;
                Concursado.Salario = oConcursado.Salario;
                Concursado.ValorGratificacao = oConcursado.ValorGratificacao;
                Concursado.DataAdmissao = oConcursado.DataAdmissao;
                Concursado.DataNascimento = oConcursado.DataNascimento;
                Concursado.ValeRefeicao = oConcursado.ValeRefeicao;
                Concursado.ValeTransporte = oConcursado.ValeTransporte;

                _context.SaveChanges();
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
                _context.Funcionarios.Attach(oConcursado);
                _context.Funcionarios.DeleteObject(oConcursado);
                SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public void SaveChanges()
        {
            try
            {
                _context.SaveChanges();
            }
            catch (OptimisticConcurrencyException ocex)
            {
                _context.Refresh(RefreshMode.StoreWins, ocex.StateEntries[0].Entity);
                throw ocex;
            }
        }

        private bool disposedValue = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposedValue)
            {
                if (disposing)
                {
                    _context.Dispose();
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