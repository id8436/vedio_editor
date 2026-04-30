.class public Lcom/behance/sdk/exception/BehanceSDKHTTPStatusCodeNotOKException;
.super Lcom/behance/sdk/exception/BehanceSDKException;
.source "BehanceSDKHTTPStatusCodeNotOKException.java"


# static fields
.field public static final GET_USER_PROJECT_LIST_GET_PROJECTS_UNEXPECTED_RESPONSE_CODE:I = 0x2711

.field public static final USER_AUTH_NOT_OK_HTTP_CODE_ERROR:I = 0x1771

.field private static final serialVersionUID:J = -0x7e2ebd1e4b06d98dL


# instance fields
.field private httpStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/behance/sdk/exception/BehanceSDKHTTPStatusCodeNotOKException;->httpStatusCode:I

    return v0
.end method

.method public setHttpStatusCode(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/behance/sdk/exception/BehanceSDKHTTPStatusCodeNotOKException;->httpStatusCode:I

    .line 41
    return-void
.end method
