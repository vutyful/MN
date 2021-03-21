package systems.domains;

import java.io.StringReader;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

public class CLOBHandler implements TypeHandler{
    @Override
    // �뙆�씪硫뷀꽣 �뀑�똿�븷�븣
    public void setParameter(PreparedStatement ps, int i, Object parameter, JdbcType jdbcType)
           throws SQLException {
        String s = (String) parameter;
        StringReader reader = new StringReader(s);
        ps.setCharacterStream(i, reader, s.length());
    }
 
    @Override
    // Statement 濡� SQL �샇異쒗빐�꽌 ResultSet �쑝濡� 而щ읆媛믪쓣 �씫�뼱�삱�븣
    public Object getResult(ResultSet rs, String columnName) throws SQLException {
        return rs.getString(columnName);
    }
 
    @Override
    // CallableStatement 濡� SQL �샇異쒗빐�꽌 而щ읆媛� �씫�뼱�삱�븣
    public Object getResult(CallableStatement cs, int columnIndex) throws SQLException {
        return cs.getString(columnIndex);
    }

	@Override
	public Object getResult(ResultSet rs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
}