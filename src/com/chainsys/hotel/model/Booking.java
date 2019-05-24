package com.chainsys.hotel.model;

/**
 * 
 * @author anba2119
 *
 */
public class Booking {
	private int id;
	private String checkin;
	private String checkout;
	private int booked_by;
	private String booked_date;

	@Override
	public String toString() {
		return "Booking [id=" + id + ", checkin=" + checkin + ", checkout=" + checkout + ", booked_by=" + booked_by
				+ ", booked_date=" + booked_date + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + booked_by;
		result = prime * result + ((booked_date == null) ? 0 : booked_date.hashCode());
		result = prime * result + ((checkin == null) ? 0 : checkin.hashCode());
		result = prime * result + ((checkout == null) ? 0 : checkout.hashCode());
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Booking other = (Booking) obj;
		if (booked_by != other.booked_by)
			return false;
		if (booked_date == null) {
			if (other.booked_date != null)
				return false;
		} else if (!booked_date.equals(other.booked_date))
			return false;
		if (checkin == null) {
			if (other.checkin != null)
				return false;
		} else if (!checkin.equals(other.checkin))
			return false;
		if (checkout == null) {
			if (other.checkout != null)
				return false;
		} else if (!checkout.equals(other.checkout))
			return false;
		if (id != other.id)
			return false;
		return true;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public int getBooked_by() {
		return booked_by;
	}

	public void setBooked_by(int booked_by) {
		this.booked_by = booked_by;
	}

	public String getBooked_date() {
		return booked_date;
	}

	public void setBooked_date(String booked_date) {
		this.booked_date = booked_date;
	}

}
