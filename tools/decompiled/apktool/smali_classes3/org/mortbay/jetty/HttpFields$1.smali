.class Lorg/mortbay/jetty/HttpFields$1;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field field:Lorg/mortbay/jetty/HttpFields$Field;

.field i:I

.field private final this$0:Lorg/mortbay/jetty/HttpFields;

.field private final val$revision:I


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpFields;I)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$1;->this$0:Lorg/mortbay/jetty/HttpFields;

    iput p2, p0, Lorg/mortbay/jetty/HttpFields$1;->val$revision:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 228
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_0

    move v0, v1

    .line 238
    :goto_0
    return v0

    .line 229
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$1;->this$0:Lorg/mortbay/jetty/HttpFields;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 231
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->this$0:Lorg/mortbay/jetty/HttpFields;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    iget v2, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 232
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$000(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields$1;->val$revision:I

    if-ne v2, v3, :cond_0

    .line 234
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    move v0, v1

    .line 235
    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$1;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$200(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    .line 247
    return-object v0

    .line 249
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
