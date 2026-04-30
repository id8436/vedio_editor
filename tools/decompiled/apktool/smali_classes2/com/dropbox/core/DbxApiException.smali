.class public Lcom/dropbox/core/DbxApiException;
.super Lcom/dropbox/core/DbxException;
.source "DbxApiException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final userMessage:Lcom/dropbox/core/LocalizedText;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p3}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcom/dropbox/core/DbxApiException;->userMessage:Lcom/dropbox/core/LocalizedText;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p3, p4}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iput-object p2, p0, Lcom/dropbox/core/DbxApiException;->userMessage:Lcom/dropbox/core/LocalizedText;

    .line 19
    return-void
.end method

.method protected static buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/DbxApiException;->buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string/jumbo v1, "Exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    .line 43
    const-string/jumbo v1, " (user message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUserMessage()Lcom/dropbox/core/LocalizedText;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/DbxApiException;->userMessage:Lcom/dropbox/core/LocalizedText;

    return-object v0
.end method
