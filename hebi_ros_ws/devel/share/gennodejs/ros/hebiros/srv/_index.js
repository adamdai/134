
"use strict";

let AddGroupFromNamesSrv = require('./AddGroupFromNamesSrv.js')
let AddGroupFromUrdfSrv = require('./AddGroupFromUrdfSrv.js')
let SizeSrv = require('./SizeSrv.js')
let SetFeedbackFrequencySrv = require('./SetFeedbackFrequencySrv.js')
let SetCommandLifetimeSrv = require('./SetCommandLifetimeSrv.js')
let EntryListSrv = require('./EntryListSrv.js')
let SendCommandWithAcknowledgementSrv = require('./SendCommandWithAcknowledgementSrv.js')

module.exports = {
  AddGroupFromNamesSrv: AddGroupFromNamesSrv,
  AddGroupFromUrdfSrv: AddGroupFromUrdfSrv,
  SizeSrv: SizeSrv,
  SetFeedbackFrequencySrv: SetFeedbackFrequencySrv,
  SetCommandLifetimeSrv: SetCommandLifetimeSrv,
  EntryListSrv: EntryListSrv,
  SendCommandWithAcknowledgementSrv: SendCommandWithAcknowledgementSrv,
};
