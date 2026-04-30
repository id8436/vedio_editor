.class public Lcom/behance/sdk/webservices/apis/AssetUploadApi;
.super Ljava/lang/Object;
.source "AssetUploadApi.java"


# static fields
.field private static final AUTO_SIGN_MULTIPART:Ljava/lang/String; = "auto_sign_multipart"

.field private static final EDITOR_PATH:Ljava/lang/String; = "editor"

.field private static final FORM_EXTENSION:Ljava/lang/String; = "extension"

.field private static final FORM_OBJECT_KEY:Ljava/lang/String; = "object_key"

.field private static final FORM_UPLOAD_ID:Ljava/lang/String; = "upload_id"

.field private static final PROJECT_PATH:Ljava/lang/String; = "project"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeMultipartUpload(Ljava/lang/String;Ljava/lang/String;)Ld/bd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/behance/sdk/webservices/WebServiceUtility;->baseApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "project"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "auto_sign_multipart"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "complete"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/behance/sdk/webservices/WebServiceUtility;->pathConcat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/behance/sdk/webservices/WebServiceUtility;->addApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ld/ae;

    invoke-direct {v1}, Ld/ae;-><init>()V

    .line 104
    const-string/jumbo v2, "object_key"

    invoke-virtual {v1, v2, p1}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 105
    const-string/jumbo v2, "upload_id"

    invoke-virtual {v1, v2, p0}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 106
    invoke-virtual {v1}, Ld/ae;->a()Ld/ad;

    move-result-object v1

    .line 108
    new-instance v2, Ld/ay;

    invoke-direct {v2}, Ld/ay;-><init>()V

    .line 109
    invoke-virtual {v2, v0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Ld/ay;->a(Ld/az;)Ld/ay;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->callWithAuth(Ld/ax;)Ld/g;

    move-result-object v0

    invoke-interface {v0}, Ld/g;->a()Ld/bd;

    move-result-object v0

    return-object v0
.end method

.method public static generateSignedUrl(Ljava/lang/String;)Ld/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/behance/sdk/webservices/WebServiceUtility;->baseApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "project"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "auto_sign_request"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/behance/sdk/webservices/WebServiceUtility;->pathConcat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/behance/sdk/webservices/WebServiceUtility;->addApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ld/ae;

    invoke-direct {v1}, Ld/ae;-><init>()V

    .line 33
    const-string/jumbo v2, "extension"

    invoke-virtual {v1, v2, p0}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 34
    invoke-virtual {v1}, Ld/ae;->a()Ld/ad;

    move-result-object v1

    .line 36
    new-instance v2, Ld/ay;

    invoke-direct {v2}, Ld/ay;-><init>()V

    .line 37
    invoke-virtual {v2, v0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Ld/ay;->a(Ld/az;)Ld/ay;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->callWithAuth(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method

.method public static generateSignedUrlForPart(Ljava/lang/String;Ljava/lang/String;I)Ld/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/behance/sdk/webservices/WebServiceUtility;->baseApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "project"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "auto_sign_multipart"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "upload"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/behance/sdk/webservices/WebServiceUtility;->pathConcat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/behance/sdk/webservices/WebServiceUtility;->addApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ld/ae;

    invoke-direct {v1}, Ld/ae;-><init>()V

    .line 76
    const-string/jumbo v2, "object_key"

    invoke-virtual {v1, v2, p1}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 77
    const-string/jumbo v2, "upload_id"

    invoke-virtual {v1, v2, p0}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 78
    const-string/jumbo v2, "part_number"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 79
    invoke-virtual {v1}, Ld/ae;->a()Ld/ad;

    move-result-object v1

    .line 81
    new-instance v2, Ld/ay;

    invoke-direct {v2}, Ld/ay;-><init>()V

    .line 82
    invoke-virtual {v2, v0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Ld/ay;->a(Ld/az;)Ld/ay;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->callWithAuth(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method

.method public static initiateMultipartUpload(Ljava/lang/String;)Ld/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/behance/sdk/webservices/WebServiceUtility;->baseApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "project"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "auto_sign_multipart"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "initiate"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/behance/sdk/webservices/WebServiceUtility;->pathConcat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/behance/sdk/webservices/WebServiceUtility;->addApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ld/ae;

    invoke-direct {v1}, Ld/ae;-><init>()V

    .line 60
    const-string/jumbo v2, "extension"

    invoke-virtual {v1, v2, p0}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 61
    invoke-virtual {v1}, Ld/ae;->a()Ld/ad;

    move-result-object v1

    .line 63
    new-instance v2, Ld/ay;

    invoke-direct {v2}, Ld/ay;-><init>()V

    .line 64
    invoke-virtual {v2, v0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Ld/ay;->a(Ld/az;)Ld/ay;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->callWithAuth(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method

.method public static uploadChunkToS3(Ljava/lang/String;Ljava/io/File;)Ld/g;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ld/ay;

    invoke-direct {v0}, Ld/ay;-><init>()V

    .line 91
    invoke-virtual {v0, p0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-static {v1, p1}, Ld/az;->create(Ld/an;Ljava/io/File;)Ld/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/ay;->b(Ld/az;)Ld/ay;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->call(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method

.method public static uploadFileToS3(Ljava/lang/String;Ld/an;Ljava/io/File;)Ld/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ld/ay;

    invoke-direct {v0}, Ld/ay;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 47
    invoke-static {p1, p2}, Ld/az;->create(Ld/an;Ljava/io/File;)Ld/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/ay;->b(Ld/az;)Ld/ay;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->call(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method
