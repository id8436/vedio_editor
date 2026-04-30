.class public Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;
.super Lcom/google/gdata/util/AuthenticationException;
.source "GoogleService.java"


# instance fields
.field private captchaToken:Ljava/lang/String;

.field private captchaUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 135
    iput-object p3, p0, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;->captchaToken:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;->captchaUrl:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;->captchaToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;->captchaUrl:Ljava/lang/String;

    return-object v0
.end method
