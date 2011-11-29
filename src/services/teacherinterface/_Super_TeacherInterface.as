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
        operation = new mx.rpc.remoting.Operation(null, "GetAllTopics");
         operation.resultType = Object;
        operations["GetAllTopics"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "GetLOsByTopicId");
         operation.resultType = Object;
        operations["GetLOsByTopicId"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "GetQuestionsByLOId");
         operation.resultType = Object;
        operations["GetQuestionsByLOId"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "SaveQuestionsToPS");
         operation.resultType = Object;
        operations["SaveQuestionsToPS"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "GetQuestionFailuresByLO");
         operation.resultType = Object;
        operations["GetQuestionFailuresByLO"] = operation;

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
      * This method is a generated wrapper used to call the 'GetAllTopics' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetAllTopics(subjectId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetAllTopics");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(subjectId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetLOsByTopicId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetLOsByTopicId(topicId:Object, gradeLevel:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetLOsByTopicId");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(topicId,gradeLevel) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetQuestionsByLOId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestionsByLOId(LOId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestionsByLOId");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(LOId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'SaveQuestionsToPS' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function SaveQuestionsToPS(studentId:Object, qsArray:Object, current:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("SaveQuestionsToPS");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(studentId,qsArray,current) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetQuestionFailuresByLO' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestionFailuresByLO(lobjectId:Object, classId:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestionFailuresByLO");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(lobjectId,classId) ;
        return _internal_token;
    }
     
}

}
