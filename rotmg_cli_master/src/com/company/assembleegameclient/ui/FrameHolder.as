﻿// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._y3

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _0D_d.Frame;
    import flash.display.Graphics;
    import flash.events.Event;

    public class FrameHolder extends Sprite {

        private var dimScreen:Shape;
        private var frame:Frame;

        public function FrameHolder(frame:Frame){
            this.dimScreen = new Shape();
            var _local2:Graphics = this.dimScreen.graphics;
            _local2.clear();
            _local2.beginFill(0, 0.8);
            _local2.drawRect(0, 0, 800, 600);
            _local2.endFill();
            addChild(this.dimScreen);
            this.frame = frame;
            this.frame.addEventListener(Event.COMPLETE, this.onComplete);
            addChild(this.frame);
        }
        private function onComplete(_arg1:Event):void{
            parent.removeChild(this);
        }

    }
}//package com.company.assembleegameclient.ui

