.class public final Lcom/google/api/client/json/jackson2/JacksonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "JacksonFactory.java"


# instance fields
.field private final factory:Lcom/d/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    .line 44
    new-instance v0, Lcom/d/a/a/d;

    invoke-direct {v0}, Lcom/d/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    .line 49
    iget-object v0, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    sget-object v1, Lcom/d/a/a/h;->b:Lcom/d/a/a/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/d/a/a/d;->a(Lcom/d/a/a/h;Z)Lcom/d/a/a/d;

    .line 63
    return-void
.end method

.method static convert(Lcom/d/a/a/o;)Lcom/google/api/client/json/JsonToken;
    .locals 2

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lcom/google/api/client/json/jackson2/JacksonFactory$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p0}, Lcom/d/a/a/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    sget-object v0, Lcom/google/api/client/json/JsonToken;->NOT_AVAILABLE:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 108
    :pswitch_0
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 110
    :pswitch_1
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 112
    :pswitch_2
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 116
    :pswitch_4
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 118
    :pswitch_5
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 120
    :pswitch_6
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 122
    :pswitch_7
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 124
    :pswitch_8
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 126
    :pswitch_9
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 128
    :pswitch_a
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/api/client/json/jackson2/JacksonFactory$InstanceHolder;->INSTANCE:Lcom/google/api/client/json/jackson2/JacksonFactory;

    return-object v0
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonGenerator;

    iget-object v1, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    sget-object v2, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    invoke-virtual {v1, p1, v2}, Lcom/d/a/a/d;->b(Ljava/io/OutputStream;Lcom/d/a/a/c;)Lcom/d/a/a/g;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson2/JacksonGenerator;-><init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/g;)V

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonGenerator;

    iget-object v1, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    invoke-virtual {v1, p1}, Lcom/d/a/a/d;->b(Ljava/io/Writer;)Lcom/d/a/a/g;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson2/JacksonGenerator;-><init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/g;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    invoke-virtual {v1, p1}, Lcom/d/a/a/d;->b(Ljava/io/InputStream;)Lcom/d/a/a/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson2/JacksonParser;-><init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/k;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    invoke-virtual {v1, p1}, Lcom/d/a/a/d;->b(Ljava/io/InputStream;)Lcom/d/a/a/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson2/JacksonParser;-><init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/k;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    invoke-virtual {v1, p1}, Lcom/d/a/a/d;->b(Ljava/io/Reader;)Lcom/d/a/a/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson2/JacksonParser;-><init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/k;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson2/JacksonFactory;->factory:Lcom/d/a/a/d;

    invoke-virtual {v1, p1}, Lcom/d/a/a/d;->b(Ljava/lang/String;)Lcom/d/a/a/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson2/JacksonParser;-><init>(Lcom/google/api/client/json/jackson2/JacksonFactory;Lcom/d/a/a/k;)V

    return-object v0
.end method
