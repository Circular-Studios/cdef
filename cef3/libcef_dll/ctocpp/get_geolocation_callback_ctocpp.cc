// Copyright (c) 2014 The Chromium Embedded Framework Authors. All rights
// reserved. Use of this source code is governed by a BSD-style license that
// can be found in the LICENSE file.
//
// ---------------------------------------------------------------------------
//
// This file was generated by the CEF translator tool. If making changes by
// hand only do so within the body of existing method and function
// implementations. See the translator.README.txt file in the tools directory
// for more information.
//

#include "libcef_dll/ctocpp/get_geolocation_callback_ctocpp.h"


// VIRTUAL METHODS - Body may be edited by hand.

void CefGetGeolocationCallbackCToCpp::OnLocationUpdate(
    const CefGeoposition& position) {
  if (CEF_MEMBER_MISSING(struct_, on_location_update))
    return;

  // AUTO-GENERATED CONTENT - DELETE THIS COMMENT BEFORE MODIFYING

  // Execute
  struct_->on_location_update(struct_,
      &position);
}


#ifndef NDEBUG
template<> long CefCToCpp<CefGetGeolocationCallbackCToCpp,
    CefGetGeolocationCallback, cef_get_geolocation_callback_t>::DebugObjCt =
    0;
#endif

