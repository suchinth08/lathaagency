// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Processor.java

package in.anandm.apps.process;

import in.anandm.apps.event.*;

public interface Processor
{

    public abstract void sendEmail(Event event)
        throws Exception;

   
}
