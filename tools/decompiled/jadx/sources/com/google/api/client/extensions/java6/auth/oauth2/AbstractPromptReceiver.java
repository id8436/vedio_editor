package com.google.api.client.extensions.java6.auth.oauth2;

import java.util.Scanner;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractPromptReceiver implements VerificationCodeReceiver {
    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    public String waitForCode() {
        String strNextLine;
        do {
            System.out.print("Please enter code: ");
            strNextLine = new Scanner(System.in).nextLine();
        } while (strNextLine.isEmpty());
        return strNextLine;
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    public void stop() {
    }
}
