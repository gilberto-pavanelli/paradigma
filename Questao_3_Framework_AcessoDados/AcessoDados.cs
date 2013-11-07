using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

namespace Questao_3_Framework_AcessoDados
{
    public class AcessoDados
    {
        public static String Inserir(Object oObject)
        {
            // reflection para extrair propriedades
            Type oType = oObject.GetType();
            String sFields = String.Empty;
            String sValues = String.Empty;
            PropertyInfo[] oPropertiesInfo = oType.GetProperties();
            foreach (PropertyInfo oProperty in oPropertiesInfo)
            {
               sFields += oProperty.Name + ",";
               sValues += "'" + oObject.GetType().GetProperty(oProperty.Name).GetValue(oObject, null)+ "',";
            }
            // retirar , do final da string pois nao existe outro campo
            sFields = sFields.Substring(0, sFields.Length - 1);
            sValues = sValues.Substring(0, sValues.Length - 1);

            // gerar sql de insert
            return String.Format("INSERT INTO {0} ({1}) VALUES ({2})", oType.Name, sFields, sValues);
        }
    }

    public class Cliente
    {
        public int Codigo { get; set; }
        public String Descricao { get; set; }
    }
}
