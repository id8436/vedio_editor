.class Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"

# interfaces
.implements Lcom/google/gdata/util/parser/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/util/parser/Callback",
        "<",
        "Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([CIILcom/google/gdata/util/httputil/FormUrlDecoder$Result;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;-><init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V

    .line 191
    iget-object v1, p4, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->encoding:Ljava/lang/String;

    invoke-static {p1, p2, p3, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->access$100([CIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->name:Ljava/lang/String;

    .line 192
    iget-object v1, p4, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->params:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public bridge synthetic handle([CIILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p4, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/gdata/util/httputil/FormUrlDecoder$NameAction;->handle([CIILcom/google/gdata/util/httputil/FormUrlDecoder$Result;)V

    return-void
.end method
