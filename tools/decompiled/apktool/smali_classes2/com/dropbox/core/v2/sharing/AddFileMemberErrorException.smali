.class public Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;
.super Lcom/dropbox/core/DbxApiException;
.source "AddFileMemberErrorException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final errorValue:Lcom/dropbox/core/v2/sharing/AddFileMemberError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFileMemberError;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {p1, p3, p4}, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;->buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    .line 30
    if-nez p4, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "errorValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;->errorValue:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 34
    return-void
.end method
