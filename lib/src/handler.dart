part of irc_client;

/**
 * Extend [Handler] to handle commands which are received from the IRC server. 
 */
class Handler {
  /**
   * Called every time a command is received from the server. No more onCommand
   * handlers will be called if this one returns [true].
   */
  bool onCommand(Command cmd, Connection cnx) {
    return false;
  }
  
  /**
   * Called every time a channel message is received from the server. 
   * No more onChannelMessage handlers will be called if this one returns [true].
   */
  bool onChannelMessage(String channel, String message, Connection cnx) {
    return false;    
  }
  
  /**
   * Called every time a private message is received from the server, addressed
   * to the current nick. No more onPrivateMessage handlers will be called if 
   * this one returns [true].
   */
  bool onPrivateMessage(String nick, String message, Connection cnx) {
    return false;
  }
  
  /**
   * Called after the client has finished connecting to the IRC server.
   * No more onConnection handlers will be called if this one returns [true].
   */
  bool onConnection(Connection irc) {
    return false;
  }
  
  /**
   * Called when the server is disconnected from the client.
   * No more onDisconnection handlers will be called if this one returns [true].
   */
  bool onDisconnection(Connection cnx) {
    return false;
  }
}




