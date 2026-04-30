.class public final Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
.source "AdobeAuthException.java"


# static fields
.field public static final KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"


# instance fields
.field private final errorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;-><init>(Ljava/util/HashMap;)V

    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->errorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 44
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    const-string/jumbo v1, "error_description"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "error_description"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Adobe Authentication Error. Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->errorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->errorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object v0
.end method
