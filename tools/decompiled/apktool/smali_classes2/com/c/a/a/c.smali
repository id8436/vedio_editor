.class public Lcom/c/a/a/c;
.super Lcom/c/a/a/g;
.source "Literal.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/c/a/a/g;-><init>(I)V

    .line 33
    iput-object p1, p0, Lcom/c/a/a/c;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/c;->b:Ljava/util/regex/Pattern;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/c/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/c/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method
