/* Converted to D from ../include/capi/cef_client_capi.h by htod */
module cef_client_capi;
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

//C     #ifndef CEF_INCLUDE_CAPI_CEF_CLIENT_CAPI_H_
//C     #define CEF_INCLUDE_CAPI_CEF_CLIENT_CAPI_H_
//C     #pragma once

//C     #include "include/capi/cef_base_capi.h"
import cef_base_capi;
//C     #include "include/capi/cef_context_menu_handler_capi.h"
import cef_context_menu_handler_capi;
//C     #include "include/capi/cef_dialog_handler_capi.h"
import cef_dialog_handler_capi;
//C     #include "include/capi/cef_display_handler_capi.h"
import cef_display_handler_capi;
//C     #include "include/capi/cef_download_handler_capi.h"
import cef_download_handler_capi;
//C     #include "include/capi/cef_drag_handler_capi.h"
import cef_drag_handler_capi;
//C     #include "include/capi/cef_focus_handler_capi.h"
import cef_focus_handler_capi;
//C     #include "include/capi/cef_geolocation_handler_capi.h"
import cef_geolocation_handler_capi;
//C     #include "include/capi/cef_jsdialog_handler_capi.h"
import cef_jsdialog_handler_capi;
//C     #include "include/capi/cef_keyboard_handler_capi.h"
import cef_keyboard_handler_capi;
//C     #include "include/capi/cef_life_span_handler_capi.h"
import cef_life_span_handler_capi;
//C     #include "include/capi/cef_load_handler_capi.h"
import cef_load_handler_capi;
//C     #include "include/capi/cef_process_message_capi.h"
//C     #include "include/capi/cef_render_handler_capi.h"
import cef_render_handler_capi;
//C     #include "include/capi/cef_request_handler_capi.h"
import cef_request_handler_capi;

//C     #ifdef __cplusplus
//C     extern "C" {
//C     #endif


///
// Implement this structure to provide handler implementations.
///
//C     typedef struct _cef_client_t {
  ///
  // Base structure.
  ///
//C       cef_base_t base;

  ///
  // Return the handler for context menus. If no handler is provided the default
  // implementation will be used.
  ///
//C       struct _cef_context_menu_handler_t* (CEF_CALLBACK *get_context_menu_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for dialogs. If no handler is provided the default
  // implementation will be used.
  ///
//C       struct _cef_dialog_handler_t* (CEF_CALLBACK *get_dialog_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for browser display state events.
  ///
//C       struct _cef_display_handler_t* (CEF_CALLBACK *get_display_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for download events. If no handler is returned downloads
  // will not be allowed.
  ///
//C       struct _cef_download_handler_t* (CEF_CALLBACK *get_download_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for drag events.
  ///
//C       struct _cef_drag_handler_t* (CEF_CALLBACK *get_drag_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for focus events.
  ///
//C       struct _cef_focus_handler_t* (CEF_CALLBACK *get_focus_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for geolocation permissions requests. If no handler is
  // provided geolocation access will be denied by default.
  ///
//C       struct _cef_geolocation_handler_t* (CEF_CALLBACK *get_geolocation_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for JavaScript dialogs. If no handler is provided the
  // default implementation will be used.
  ///
//C       struct _cef_jsdialog_handler_t* (CEF_CALLBACK *get_jsdialog_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for keyboard events.
  ///
//C       struct _cef_keyboard_handler_t* (CEF_CALLBACK *get_keyboard_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for browser life span events.
  ///
//C       struct _cef_life_span_handler_t* (CEF_CALLBACK *get_life_span_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for browser load status events.
  ///
//C       struct _cef_load_handler_t* (CEF_CALLBACK *get_load_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for off-screen rendering events.
  ///
//C       struct _cef_render_handler_t* (CEF_CALLBACK *get_render_handler)(
//C           struct _cef_client_t* self);

  ///
  // Return the handler for browser request events.
  ///
//C       struct _cef_request_handler_t* (CEF_CALLBACK *get_request_handler)(
//C           struct _cef_client_t* self);

  ///
  // Called when a new message is received from a different process. Return true
  // (1) if the message was handled or false (0) otherwise. Do not keep a
  // reference to or attempt to access the message outside of this callback.
  ///
//C       int (CEF_CALLBACK *on_process_message_received)(struct _cef_client_t* self,
//C           struct _cef_browser_t* browser, cef_process_id_t source_process,
//C           struct _cef_process_message_t* message);
//C     } cef_client_t;
struct _cef_client_t
{
    cef_base_t base;
    _cef_context_menu_handler_t * function(_cef_client_t *self)get_context_menu_handler;
    _cef_dialog_handler_t * function(_cef_client_t *self)get_dialog_handler;
    _cef_display_handler_t * function(_cef_client_t *self)get_display_handler;
    _cef_download_handler_t * function(_cef_client_t *self)get_download_handler;
    _cef_drag_handler_t * function(_cef_client_t *self)get_drag_handler;
    _cef_focus_handler_t * function(_cef_client_t *self)get_focus_handler;
    _cef_geolocation_handler_t * function(_cef_client_t *self)get_geolocation_handler;
    _cef_jsdialog_handler_t * function(_cef_client_t *self)get_jsdialog_handler;
    _cef_keyboard_handler_t * function(_cef_client_t *self)get_keyboard_handler;
    _cef_life_span_handler_t * function(_cef_client_t *self)get_life_span_handler;
    _cef_load_handler_t * function(_cef_client_t *self)get_load_handler;
    _cef_render_handler_t * function(_cef_client_t *self)get_render_handler;
    _cef_request_handler_t * function(_cef_client_t *self)get_request_handler;
    int  function(_cef_client_t *self, _cef_browser_t *browser, cef_process_id_t source_process, _cef_process_message_t *message)on_process_message_received;
}
extern (C):
alias _cef_client_t cef_client_t;


//C     #ifdef __cplusplus
//C     }
//C     #endif

//C     #endif  // CEF_INCLUDE_CAPI_CEF_CLIENT_CAPI_H_
