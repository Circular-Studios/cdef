/* Converted to D from ../include/capi/cef_download_handler_capi.h by htod */
module cef_download_handler_capi;
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

//C     #ifndef CEF_INCLUDE_CAPI_CEF_DOWNLOAD_HANDLER_CAPI_H_
//C     #define CEF_INCLUDE_CAPI_CEF_DOWNLOAD_HANDLER_CAPI_H_
//C     #pragma once

//C     #include "include/capi/cef_base_capi.h"
import cef_base_capi;
//C     #include "include/capi/cef_browser_capi.h"
import cef_browser_capi;
//C     #include "include/capi/cef_download_item_capi.h"
import cef_download_item_capi;

//C     #ifdef __cplusplus
//C     extern "C" {
//C     #endif


///
// Callback structure used to asynchronously continue a download.
///
//C     typedef struct _cef_before_download_callback_t {
  ///
  // Base structure.
  ///
//C       cef_base_t base;

  ///
  // Call to continue the download. Set |download_path| to the full file path
  // for the download including the file name or leave blank to use the
  // suggested name and the default temp directory. Set |show_dialog| to true
  // (1) if you do wish to show the default "Save As" dialog.
  ///
//C       void (CEF_CALLBACK *cont)(struct _cef_before_download_callback_t* self,
//C           const cef_string_t* download_path, int show_dialog);
//C     } cef_before_download_callback_t;
struct _cef_before_download_callback_t
{
    cef_base_t base;
    void  function(_cef_before_download_callback_t *self, cef_string_t *download_path, int show_dialog)cont;
}
extern (C):
alias _cef_before_download_callback_t cef_before_download_callback_t;


///
// Callback structure used to asynchronously cancel a download.
///
//C     typedef struct _cef_download_item_callback_t {
  ///
  // Base structure.
  ///
//C       cef_base_t base;

  ///
  // Call to cancel the download.
  ///
//C       void (CEF_CALLBACK *cancel)(struct _cef_download_item_callback_t* self);
//C     } cef_download_item_callback_t;
struct _cef_download_item_callback_t
{
    cef_base_t base;
    void  function(_cef_download_item_callback_t *self)cancel;
}
alias _cef_download_item_callback_t cef_download_item_callback_t;


///
// Structure used to handle file downloads. The functions of this structure will
// called on the browser process UI thread.
///
//C     typedef struct _cef_download_handler_t {
  ///
  // Base structure.
  ///
//C       cef_base_t base;

  ///
  // Called before a download begins. |suggested_name| is the suggested name for
  // the download file. By default the download will be canceled. Execute
  // |callback| either asynchronously or in this function to continue the
  // download if desired. Do not keep a reference to |download_item| outside of
  // this function.
  ///
//C       void (CEF_CALLBACK *on_before_download)(struct _cef_download_handler_t* self,
//C           struct _cef_browser_t* browser,
//C           struct _cef_download_item_t* download_item,
//C           const cef_string_t* suggested_name,
//C           struct _cef_before_download_callback_t* callback);

  ///
  // Called when a download's status or progress information has been updated.
  // This may be called multiple times before and after on_before_download().
  // Execute |callback| either asynchronously or in this function to cancel the
  // download if desired. Do not keep a reference to |download_item| outside of
  // this function.
  ///
//C       void (CEF_CALLBACK *on_download_updated)(struct _cef_download_handler_t* self,
//C           struct _cef_browser_t* browser,
//C           struct _cef_download_item_t* download_item,
//C           struct _cef_download_item_callback_t* callback);
//C     } cef_download_handler_t;
struct _cef_download_handler_t
{
    cef_base_t base;
    void  function(_cef_download_handler_t *self, _cef_browser_t *browser, _cef_download_item_t *download_item, cef_string_t *suggested_name, _cef_before_download_callback_t *callback)on_before_download;
    void  function(_cef_download_handler_t *self, _cef_browser_t *browser, _cef_download_item_t *download_item, _cef_download_item_callback_t *callback)on_download_updated;
}
alias _cef_download_handler_t cef_download_handler_t;


//C     #ifdef __cplusplus
//C     }
//C     #endif

//C     #endif  // CEF_INCLUDE_CAPI_CEF_DOWNLOAD_HANDLER_CAPI_H_
