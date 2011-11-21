/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - TeacherInterface.as.
 */
package services.teacherinterface
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_TeacherInterface extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{

    // Constructor
    public function _Super_TeacherInterface()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "ProcessTeacherLogin");
         operation.resultType = Object;
        operations["ProcessTeacherLogin"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "TeacherLogout");
         operation.resultType = Object;
        operations["TeacherLogout"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "CheckTeacherLoginStatus");
         operation.resultType = Object;
        operations["CheckTeacherLoginStatus"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "RecoverTeacherPassword");
         operation.resultType = Object;
        operations["RecoverTeacherPassword"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getInitialDetails");
         operation.resultType = Object;
        operations["getInitialDetails"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getClassDetails");
         operation.resultType = Object;
        operations["getClassDetails"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getStudentDetails");
         operation.resultType = Object;
        operations["getStudentDetails"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getTopicByGradeLevel");
         operation.resultType = Object;
        operations["getTopicByGradeLevel"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getLOsByTopicId");
         operation.resultType = Object;
        operations["getLOsByTopicId"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getQuestionsByLOId");
         operation.resultType = Object;
        operations["getQuestionsByLOId"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        _serviceControl.source = "TeacherInterface";
        _serviceControl.endpoint = "http://localhost/Teacher/gateway.php";


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
        destination = "TeacherInterface";
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'ProcessTeacherLogin' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function ProcessTeacherLogin(username:Object, password:Object, schoolId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("ProcessTeacherLogin");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username,password,schoolId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'TeacherLogout' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function TeacherLogout() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("TeacherLogout");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'CheckTeacherLoginStatus' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function CheckTeacherLoginStatus(returntype:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("CheckTeacherLoginStatus");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(returntype) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'RecoverTeacherPassword' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function RecoverTeacherPassword(email:Object, type:Object, schoolId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("RecoverTeacherPassword");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(email,type,schoolId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getInitialDetails' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getInitialDetails(teacherId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getInitialDetails");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(teacherId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getClassDetails' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getClassDetails(classId:Object, gl_id:Object, fromDate:Object, toDate:Object, subjectId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getClassDetails");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(classId,gl_id,fromDate,toDate,subjectId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getStudentDetails' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getStudentDetails(studentId:Object, classId:Object, gl_id:Object, fromDate:Object, toDate:Object, subjectId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getStudentDetails");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(studentId,classId,gl_id,fromDate,toDate,subjectId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopicByGradeLevel' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopicByGradeLevel(gradeLevel:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopicByGradeLevel");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(gradeLevel) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getLOsByTopicId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getLOsByTopicId(topicId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getLOsByTopicId");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(topicId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getQuestionsByLOId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getQuestionsByLOId(LOId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getQuestionsByLOId");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(LOId) ;
        return _internal_token;
    }
     
}

}
