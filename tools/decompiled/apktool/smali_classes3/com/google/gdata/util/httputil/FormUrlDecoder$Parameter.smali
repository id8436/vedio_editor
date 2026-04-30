.class Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"


# instance fields
.field name:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->name:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;-><init>()V

    return-void
.end method
