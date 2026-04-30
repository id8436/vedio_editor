.class public Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;
.super Lcom/dropbox/core/DbxApiException;
.source "UpdatePropertiesErrorException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final errorValue:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)V
    .locals 2

    .prologue
    .line 35
    invoke-static {p1, p3, p4}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;->buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    .line 36
    if-nez p4, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "errorValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;->errorValue:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 40
    return-void
.end method
