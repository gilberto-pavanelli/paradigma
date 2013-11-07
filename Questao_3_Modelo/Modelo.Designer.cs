﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
namespace Questao_3_Modelo
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class ASPNETDBEntities : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new ASPNETDBEntities object using the connection string found in the 'ASPNETDBEntities' section of the application configuration file.
        /// </summary>
        public ASPNETDBEntities() : base("name=ASPNETDBEntities", "ASPNETDBEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new ASPNETDBEntities object.
        /// </summary>
        public ASPNETDBEntities(string connectionString) : base(connectionString, "ASPNETDBEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new ASPNETDBEntities object.
        /// </summary>
        public ASPNETDBEntities(EntityConnection connection) : base(connection, "ASPNETDBEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Produtos> Produtos
        {
            get
            {
                if ((_Produtos == null))
                {
                    _Produtos = base.CreateObjectSet<Produtos>("Produtos");
                }
                return _Produtos;
            }
        }
        private ObjectSet<Produtos> _Produtos;

        #endregion

        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Produtos EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToProdutos(Produtos produtos)
        {
            base.AddObject("Produtos", produtos);
        }

        #endregion

    }

    #endregion

    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="ASPNETDBModel", Name="Produtos")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Produtos : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Produtos object.
        /// </summary>
        /// <param name="id_Produto">Initial value of the id_Produto property.</param>
        public static Produtos CreateProdutos(global::System.Int32 id_Produto)
        {
            Produtos produtos = new Produtos();
            produtos.id_Produto = id_Produto;
            return produtos;
        }

        #endregion

        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 id_Produto
        {
            get
            {
                return _id_Produto;
            }
            set
            {
                if (_id_Produto != value)
                {
                    Onid_ProdutoChanging(value);
                    ReportPropertyChanging("id_Produto");
                    _id_Produto = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("id_Produto");
                    Onid_ProdutoChanged();
                }
            }
        }
        private global::System.Int32 _id_Produto;
        partial void Onid_ProdutoChanging(global::System.Int32 value);
        partial void Onid_ProdutoChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Descricao
        {
            get
            {
                return _Descricao;
            }
            set
            {
                OnDescricaoChanging(value);
                ReportPropertyChanging("Descricao");
                _Descricao = StructuralObject.SetValidValue(value, true);
                ReportPropertyChanged("Descricao");
                OnDescricaoChanged();
            }
        }
        private global::System.String _Descricao;
        partial void OnDescricaoChanging(global::System.String value);
        partial void OnDescricaoChanged();

        #endregion

    
    }

    #endregion

    
}
