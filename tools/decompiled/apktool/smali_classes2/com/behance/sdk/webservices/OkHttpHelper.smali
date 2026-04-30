.class public Lcom/behance/sdk/webservices/OkHttpHelper;
.super Ljava/lang/Object;
.source "OkHttpHelper.java"


# static fields
.field private static final HEADER_ACCESS_TOKEN_NAME:Ljava/lang/String; = "Authorization"

.field private static final HEADER_ACCESS_TOKEN_VALUE_PREFIX:Ljava/lang/String; = "Bearer "

.field private static final gson:Lcom/google/gson/Gson;

.field private static final okHttpClient:Ld/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    new-instance v1, Lcom/behance/sdk/webservices/apis/BehanceUniversalInterceptor;

    invoke-direct {v1}, Lcom/behance/sdk/webservices/apis/BehanceUniversalInterceptor;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/webservices/OkHttpHelper;->okHttpClient:Ld/ar;

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/behance/sdk/webservices/OkHttpHelper;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Ld/ax;)Ld/g;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/behance/sdk/webservices/OkHttpHelper;->okHttpClient:Ld/ar;

    invoke-virtual {v0, p0}, Ld/ar;->a(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method

.method public static callWithAuth(Ld/ax;)Ld/g;
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Ld/ax;->e()Ld/ay;

    move-result-object v1

    const-string/jumbo v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v2, v0}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/behance/sdk/webservices/OkHttpHelper;->call(Ld/ax;)Ld/g;

    move-result-object v0

    return-object v0
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/behance/sdk/webservices/OkHttpHelper;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method
