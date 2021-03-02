package Nike.ecom;

import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "products")
public class ProductsPojo {
	
	@Id
	private int id;
	private String name;
	private byte[] image;
	private String description;
	private String price;
	private String quantity;
	private String category;
	private String base64;
	
	@Transient
	public String getBase64() {
	    base64 = Base64.getEncoder().encodeToString(this.image);
	    return base64;
	}
	public void setBase64(String base64) {
		this.base64 = base64;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	  @Column(name = "image")
	    public byte[] getImage() {
	        return this.image;
	    }
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	

}
