.class public final Lf/a/a/a;
.super Lf/l;
.source "GsonConverterFactory.java"


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lf/l;-><init>()V

    .line 58
    iput-object p1, p0, Lf/a/a/a;->a:Lcom/google/gson/Gson;

    .line 59
    return-void
.end method

.method public static a()Lf/a/a/a;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lf/a/a/a;->a(Lcom/google/gson/Gson;)Lf/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/gson/Gson;)Lf/a/a/a;
    .locals 2

    .prologue
    .line 51
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    new-instance v0, Lf/a/a/a;

    invoke-direct {v0, p0}, Lf/a/a/a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lf/aw;",
            ")",
            "Lf/k",
            "<",
            "Ld/bf;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lf/a/a/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 65
    new-instance v1, Lf/a/a/c;

    iget-object v2, p0, Lf/a/a/a;->a:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lf/a/a/c;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lf/aw;",
            ")",
            "Lf/k",
            "<*",
            "Ld/az;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lf/a/a/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 72
    new-instance v1, Lf/a/a/b;

    iget-object v2, p0, Lf/a/a/a;->a:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lf/a/a/b;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method
