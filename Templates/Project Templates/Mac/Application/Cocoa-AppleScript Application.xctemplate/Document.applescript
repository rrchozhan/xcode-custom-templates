--  ___FILENAME___
--  ___PACKAGENAME___

--  Created by ___FULLUSERNAME___ on ___DATE___.
--___COPYRIGHT___

script ___VARIABLE_classPrefix:identifier___Document
	property parent : class "NSDocument"
	
	on init()
		continue init()
		
		-- Add your subclass-specific initialization here.
		-- If an error occurs here, return missing value.
		
		return me
	end init
	
	on windowNibName()
		-- Override returning the nib file name of the document
		-- If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
		return "___VARIABLE_classPrefix:identifier___Document"
	end windowNibName
	
	on windowControllerDidLoadNib_(aController)
		continue windowControllerDidLoadNib_(aController)
		-- Add any code here that needs to be executed once the windowController has loaded the document's window.
	end windowControllerDidLoadNib_
	
	on dataOfType_error_(typeName, outError)
		
		-- Insert code here to write your document to data of the specified type. If the given outError is not missing value, ensure that you set contents of outError when returning missing value.
		
		-- You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
		
		if outError is not missing value then
			set contents of outError to my NSError's errorWithDomain_code_userInfo_(my NSOSStatusErrorDomain, my unimpErr, missing value)
		end if
		return missing value
	end dataOfType_error_
	
	on readFromData_ofType_error_(data, typeName, outError)
		
		-- Insert code here to read your document from the given data of the specified type.  If the given outError is not missing value, ensure that you set contents of outError when returning false.
		
		-- You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead. 
		
		if outError is not missing value then
			set contents of outError to my NSError's errorWithDomain_code_userInfo_(my NSOSStatusErrorDomain, my unimpErr, missing value)
		end if
		return true
	end readFromData_ofType_error_
	
end script
