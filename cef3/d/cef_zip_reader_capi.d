/* Converted to D from ../include/capi/cef_zip_reader_capi.h by htod */
module cef_zip_reader_capi;
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

//C     #ifndef CEF_INCLUDE_CAPI_CEF_ZIP_READER_CAPI_H_
//C     #define CEF_INCLUDE_CAPI_CEF_ZIP_READER_CAPI_H_
//C     #pragma once

//C     #include "include/capi/cef_base_capi.h"
import cef_base_capi;
//C     #include "include/capi/cef_stream_capi.h"
import cef_stream_capi;

//C     #ifdef __cplusplus
//C     extern "C" {
//C     #endif


///
// Structure that supports the reading of zip archives via the zlib unzip API.
// The functions of this structure should only be called on the thread that
// creates the object.
///
//C     typedef struct _cef_zip_reader_t {
  ///
  // Base structure.
  ///
//C       cef_base_t base;

  ///
  // Moves the cursor to the first file in the archive. Returns true (1) if the
  // cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_first_file)(struct _cef_zip_reader_t* self);

  ///
  // Moves the cursor to the next file in the archive. Returns true (1) if the
  // cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_next_file)(struct _cef_zip_reader_t* self);

  ///
  // Moves the cursor to the specified file in the archive. If |caseSensitive|
  // is true (1) then the search will be case sensitive. Returns true (1) if the
  // cursor position was set successfully.
  ///
//C       int (CEF_CALLBACK *move_to_file)(struct _cef_zip_reader_t* self,
//C           const cef_string_t* fileName, int caseSensitive);

  ///
  // Closes the archive. This should be called directly to ensure that cleanup
  // occurs on the correct thread.
  ///
//C       int (CEF_CALLBACK *close)(struct _cef_zip_reader_t* self);


  // The below functions act on the file at the current cursor position.

  ///
  // Returns the name of the file.
  ///
  // The resulting string must be freed by calling cef_string_userfree_free().
//C       cef_string_userfree_t (CEF_CALLBACK *get_file_name)(
//C           struct _cef_zip_reader_t* self);

  ///
  // Returns the uncompressed size of the file.
  ///
//C       int64 (CEF_CALLBACK *get_file_size)(struct _cef_zip_reader_t* self);

  ///
  // Returns the last modified timestamp for the file.
  ///
//C       time_t (CEF_CALLBACK *get_file_last_modified)(struct _cef_zip_reader_t* self);

  ///
  // Opens the file for reading of uncompressed data. A read password may
  // optionally be specified.
  ///
//C       int (CEF_CALLBACK *open_file)(struct _cef_zip_reader_t* self,
//C           const cef_string_t* password);

  ///
  // Closes the file.
  ///
//C       int (CEF_CALLBACK *close_file)(struct _cef_zip_reader_t* self);

  ///
  // Read uncompressed file contents into the specified buffer. Returns < 0 if
  // an error occurred, 0 if at the end of file, or the number of bytes read.
  ///
//C       int (CEF_CALLBACK *read_file)(struct _cef_zip_reader_t* self, void* buffer,
//C           size_t bufferSize);

  ///
  // Returns the current offset in the uncompressed file contents.
  ///
//C       int64 (CEF_CALLBACK *tell)(struct _cef_zip_reader_t* self);

  ///
  // Returns true (1) if at end of the file contents.
  ///
//C       int (CEF_CALLBACK *eof)(struct _cef_zip_reader_t* self);
//C     } cef_zip_reader_t;
struct _cef_zip_reader_t
{
    cef_base_t base;
    int  function(_cef_zip_reader_t *self)move_to_first_file;
    int  function(_cef_zip_reader_t *self)move_to_next_file;
    int  function(_cef_zip_reader_t *self, cef_string_t *fileName, int caseSensitive)move_to_file;
    int  function(_cef_zip_reader_t *self)close;
    cef_string_userfree_t  function(_cef_zip_reader_t *self)get_file_name;
    int64  function(_cef_zip_reader_t *self)get_file_size;
    time_t  function(_cef_zip_reader_t *self)get_file_last_modified;
    int  function(_cef_zip_reader_t *self, cef_string_t *password)open_file;
    int  function(_cef_zip_reader_t *self)close_file;
    int  function(_cef_zip_reader_t *self, void *buffer, size_t bufferSize)read_file;
    int64  function(_cef_zip_reader_t *self)tell;
    int  function(_cef_zip_reader_t *self)eof;
}
extern (C):
alias _cef_zip_reader_t cef_zip_reader_t;


///
// Create a new cef_zip_reader_t object. The returned object's functions can
// only be called from the thread that created the object.
///
//C     CEF_EXPORT cef_zip_reader_t* cef_zip_reader_create(
//C         struct _cef_stream_reader_t* stream);
cef_zip_reader_t * cef_zip_reader_create(_cef_stream_reader_t *stream);


//C     #ifdef __cplusplus
//C     }
//C     #endif

//C     #endif  // CEF_INCLUDE_CAPI_CEF_ZIP_READER_CAPI_H_
