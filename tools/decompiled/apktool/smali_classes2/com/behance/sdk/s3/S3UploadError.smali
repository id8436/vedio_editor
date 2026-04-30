.class public Lcom/behance/sdk/s3/S3UploadError;
.super Ljava/lang/Object;
.source "S3UploadError.java"


# static fields
.field public static final IO_ERROR:I = 0x0

.field public static final NETWORK_ERROR:I = 0x1

.field public static final UNKNOWN_ERROR:I = 0x2


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/behance/sdk/s3/S3UploadError;->errorCode:I

    .line 13
    iput-object p2, p0, Lcom/behance/sdk/s3/S3UploadError;->errorMessage:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/behance/sdk/s3/S3UploadError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/s3/S3UploadError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
