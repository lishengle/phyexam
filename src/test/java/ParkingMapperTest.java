

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwadee.phyexam.dao.ParkingMapper;
import com.hwadee.phyexam.entity.Parking;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml"})

public class ParkingMapperTest {
	
	@Autowired private ParkingMapper parkingMapper;

	@Test
	public void test() {
		Parking parking = parkingMapper.selectByPrimaryKey(11);
		
		System.out.println(parking.toString());
		Assert.assertNotNull(parking);
	}

}
