component extends="quick.models.BaseEntity" accessors="true" {

	property name="bcrypt" inject="@BCrypt" persistent="false";

	property name="id";
	property name="email";
	property name="password";

	public User function setPassword( required string password ){
		return assignAttribute( "password", bcrypt.hashPassword( arguments.password ) );
	}

	public boolean function hasPermission( required string permission ){
		return true;
	}

	public boolean function isValidCredentials( required string email, required string password ){
		try{
			var user = newEntity().where( "email", arguments.email ).firstOrFail();
			if ( !user.isLoaded() ) {
				return false;
			}
			return bcrypt.checkPassword( arguments.password, user.getPassword() );
		} catch ( EntityNotFound e ) {
			return false;
		}
	}

	public User function retrieveUserByUsername( required string email ){
		return newEntity().where( "email", arguments.email ).firstOrFail();
	}

	public User function retrieveUserById( required numeric id ){
		return newEntity().findOrFail( arguments.id );
	}

	public struct function getMemento(){
		return { "email" : this.getEmail() };
	}

}
