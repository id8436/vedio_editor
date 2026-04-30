.class final Lf/a/a/b;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lf/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/k",
        "<TT;",
        "Ld/az;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ld/an;

.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private final c:Lcom/google/gson/Gson;

.field private final d:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v0

    sput-object v0, Lf/a/a/b;->a:Ld/an;

    .line 32
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lf/a/a/b;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lf/a/a/b;->c:Lcom/google/gson/Gson;

    .line 39
    iput-object p2, p0, Lf/a/a/b;->d:Lcom/google/gson/TypeAdapter;

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lf/a/a/b;->b(Ljava/lang/Object;)Ld/az;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ld/az;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ld/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    .line 44
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Le/f;->d()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lf/a/a/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 45
    iget-object v2, p0, Lf/a/a/b;->c:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lf/a/a/b;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 48
    sget-object v1, Lf/a/a/b;->a:Ld/an;

    invoke-virtual {v0}, Le/f;->o()Le/k;

    move-result-object v0

    invoke-static {v1, v0}, Ld/az;->create(Ld/an;Le/k;)Ld/az;

    move-result-object v0

    return-object v0
.end method
