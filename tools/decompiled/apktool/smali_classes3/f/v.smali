.class Lf/v;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Ld/i;


# instance fields
.field final synthetic a:Lf/j;

.field final synthetic b:Lf/u;


# direct methods
.method constructor <init>(Lf/u;Lf/j;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lf/v;->b:Lf/u;

    iput-object p2, p0, Lf/v;->a:Lf/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lf/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/av",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lf/v;->a:Lf/j;

    iget-object v1, p0, Lf/v;->b:Lf/u;

    invoke-interface {v0, v1, p1}, Lf/j;->onResponse(Lf/g;Lf/av;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lf/v;->a:Lf/j;

    iget-object v1, p0, Lf/v;->b:Lf/u;

    invoke-interface {v0, v1, p1}, Lf/j;->onFailure(Lf/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Ld/g;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lf/v;->a:Lf/j;

    iget-object v1, p0, Lf/v;->b:Lf/u;

    invoke-interface {v0, v1, p2}, Lf/j;->onFailure(Lf/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResponse(Ld/g;Ld/bd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lf/v;->b:Lf/u;

    invoke-virtual {v0, p2}, Lf/u;->a(Ld/bd;)Lf/av;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lf/v;->a(Lf/av;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-direct {p0, v0}, Lf/v;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
