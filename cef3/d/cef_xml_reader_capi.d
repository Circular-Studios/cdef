/* Converted to D from ../include/capi/cef_xml_reader_capi.h by htod */
module cef_xml_reader_capi;
// Copyright (c) 2014 Marshall A. Greenblatt. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//    * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//    * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//    * Neither the name of Google Inc. nor the name Chromium Embedded
// Framework nor the names of its contributors may be used to endorse
// or promote products derived from this software without specific prior
// written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// ---------------------------------------------------------------------------
//
// This file was generated by the CEF translator tool and should not edited
// by hand. See the translator.README.txt file in the tools directory for
// more information.
//

//C     #ifndef CEF_INCLUDE_CAPI_CEF_XML_READER_CAPI_H_
//C     #define CEF_INCLUDE_CAPI_CEF_XML_READER_CAPI_H_
//C     #pragma once

//C     #include "include/capi/cef_base_capi.h"
import cef_base_capi;
//C     #include "include/capi/cef_stream_capi.h"
import cef_stream_capi;

//C     #ifdef __cplusplus
//C     extern "C" {
//C     #endif


///
// Structure that supports the reading of XML data via the libxml streaming API.
// The functions of this structure should only be called on the thread that
// creates the object.
///
//C     typedef struct _cef_xml_reader_t {
  ///
  // Base structure.
  ///
//C       cef_base_t base;

  ///
  // Moves the cursor to the next node in the document. This function must be
  // called at least once to set the current cursor position. Returns true (1)
  // if the cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_next_node)(struct _cef_xml_reader_t* self);

  ///
  // Close the document. This should be called directly to ensure that cleanup
  // occurs on the correct thread.
  ///
//C       int (CEF_CALLBACK *close)(struct _cef_xml_reader_t* self);

  ///
  // Returns true (1) if an error has been reported by the XML parser.
  ///
//C       int (CEF_CALLBACK *has_error)(struct _cef_xml_reader_t* self);

  ///
  // Returns the error string.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_error)(
//C           struct _cef_xml_reader_t* self);


  // The below functions retrieve data for the node at the current cursor
  // position.

  ///
  // Returns the node type.
  ///
//C       cef_xml_node_type_t (CEF_CALLBACK *get_type)(struct _cef_xml_reader_t* self);

  ///
  // Returns the node depth. Depth starts at 0 for the root node.
  ///
//C       int (CEF_CALLBACK *get_depth)(struct _cef_xml_reader_t* self);

  ///
  // Returns the local name. See http://www.w3.org/TR/REC-xml-names/#NT-
  // LocalPart for additional details.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_local_name)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns the namespace prefix. See http://www.w3.org/TR/REC-xml-names/ for
  // additional details.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_prefix)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns the qualified name, equal to (Prefix:)LocalName. See
  // http://www.w3.org/TR/REC-xml-names/#ns-qualnames for additional details.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_qualified_name)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns the URI defining the namespace associated with the node. See
  // http://www.w3.org/TR/REC-xml-names/ for additional details.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_namespace_uri)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns the base URI of the node. See http://www.w3.org/TR/xmlbase/ for
  // additional details.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_base_uri)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns the xml:lang scope within which the node resides. See
  // http://www.w3.org/TR/REC-xml/#sec-lang-tag for additional details.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_xml_lang)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns true (1) if the node represents an NULL element. <a/> is considered
  // NULL but <a></a> is not.
  ///
//C       int (CEF_CALLBACK *is_empty_element)(struct _cef_xml_reader_t* self);

  ///
  // Returns true (1) if the node has a text value.
  ///
//C       int (CEF_CALLBACK *has_value)(struct _cef_xml_reader_t* self);

  ///
  // Returns the text value.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_value)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns true (1) if the node has attributes.
  ///
//C       int (CEF_CALLBACK *has_attributes)(struct _cef_xml_reader_t* self);

  ///
  // Returns the number of attributes.
  ///
//C       size_t (CEF_CALLBACK *get_attribute_count)(struct _cef_xml_reader_t* self);

  ///
  // Returns the value of the attribute at the specified 0-based index.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_attribute_byindex)(
//C           struct _cef_xml_reader_t* self, int index);

  ///
  // Returns the value of the attribute with the specified qualified name.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_attribute_byqname)(
//C           struct _cef_xml_reader_t* self, const cef_string_t* qualifiedName);

  ///
  // Returns the value of the attribute with the specified local name and
  // namespace URI.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_attribute_bylname)(
//C           struct _cef_xml_reader_t* self, const cef_string_t* localName,
//C           const cef_string_t* namespaceURI);

  ///
  // Returns an XML representation of the current node's children.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_inner_xml)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns an XML representation of the current node including its children.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_outer_xml)(
//C           struct _cef_xml_reader_t* self);

  ///
  // Returns the line number for the current node.
  ///
//C       int (CEF_CALLBACK *get_line_number)(struct _cef_xml_reader_t* self);


  // Attribute nodes are not traversed by default. The below functions can be
  // used to move the cursor to an attribute node. move_to_carrying_element()
  // can be called afterwards to return the cursor to the carrying element. The
  // depth of an attribute node will be 1 + the depth of the carrying element.

  ///
  // Moves the cursor to the attribute at the specified 0-based index. Returns
  // true (1) if the cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_attribute_byindex)(struct _cef_xml_reader_t* self,
//C           int index);

  ///
  // Moves the cursor to the attribute with the specified qualified name.
  // Returns true (1) if the cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_attribute_byqname)(struct _cef_xml_reader_t* self,
//C           const cef_string_t* qualifiedName);

  ///
  // Moves the cursor to the attribute with the specified local name and
  // namespace URI. Returns true (1) if the cursor position was set
  // successfully.
  ///
//C       int (CEF_CALLBACK *move_to_attribute_bylname)(struct _cef_xml_reader_t* self,
//C           const cef_string_t* localName, const cef_string_t* namespaceURI);

  ///
  // Moves the cursor to the first attribute in the current element. Returns
  // true (1) if the cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_first_attribute)(struct _cef_xml_reader_t* self);

  ///
  // Moves the cursor to the next attribute in the current element. Returns true
  // (1) if the cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_next_attribute)(struct _cef_xml_reader_t* self);

  ///
  // Moves the cursor back to the carrying element. Returns true (1) if the
  // cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_carrying_element)(struct _cef_xml_reader_t* self);
//C     } cef_xml_reader_t;
struct _cef_xml_reader_t
{
    cef_base_t base;
    int  function(_cef_xml_reader_t *self)move_to_next_node;
    int  function(_cef_xml_reader_t *self)close;
    int  function(_cef_xml_reader_t *self)has_error;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_error;
    cef_xml_node_type_t  function(_cef_xml_reader_t *self)get_type;
    int  function(_cef_xml_reader_t *self)get_depth;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_local_name;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_prefix;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_qualified_name;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_namespace_uri;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_base_uri;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_xml_lang;
    int  function(_cef_xml_reader_t *self)is_empty_element;
    int  function(_cef_xml_reader_t *self)has_value;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_value;
    int  function(_cef_xml_reader_t *self)has_attributes;
    size_t  function(_cef_xml_reader_t *self)get_attribute_count;
    cef_string_userfree_t  function(_cef_xml_reader_t *self, int index)get_attribute_byindex;
    cef_string_userfree_t  function(_cef_xml_reader_t *self, cef_string_t *qualifiedName)get_attribute_byqname;
    cef_string_userfree_t  function(_cef_xml_reader_t *self, cef_string_t *localName, cef_string_t *namespaceURI)get_attribute_bylname;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_inner_xml;
    cef_string_userfree_t  function(_cef_xml_reader_t *self)get_outer_xml;
    int  function(_cef_xml_reader_t *self)get_line_number;
    int  function(_cef_xml_reader_t *self, int index)move_to_attribute_byindex;
    int  function(_cef_xml_reader_t *self, cef_string_t *qualifiedName)move_to_attribute_byqname;
    int  function(_cef_xml_reader_t *self, cef_string_t *localName, cef_string_t *namespaceURI)move_to_attribute_bylname;
    int  function(_cef_xml_reader_t *self)move_to_first_attribute;
    int  function(_cef_xml_reader_t *self)move_to_next_attribute;
    int  function(_cef_xml_reader_t *self)move_to_carrying_element;
}
extern (C):
alias _cef_xml_reader_t cef_xml_reader_t;


///
// Create a new cef_xml_reader_t object. The returned object's functions can
// only be called from the thread that created the object.
///
//C     CEF_EXPORT cef_xml_reader_t* cef_xml_reader_create(
//C         struct _cef_stream_reader_t* stream, cef_xml_encoding_type_t encodingType,
//C         const cef_string_t* URI);
cef_xml_reader_t * cef_xml_reader_create(_cef_stream_reader_t *stream, cef_xml_encoding_type_t encodingType, cef_string_t *URI);


//C     #ifdef __cplusplus
//C     }
//C     #endif

//C     #endif  // CEF_INCLUDE_CAPI_CEF_XML_READER_CAPI_H_
