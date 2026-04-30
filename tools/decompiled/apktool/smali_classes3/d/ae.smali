.class public final Ld/ae;
.super Ljava/lang/Object;
.source "FormBody.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/ae;-><init>(Ljava/nio/charset/Charset;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/ae;->a:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/ae;->b:Ljava/util/List;

    .line 116
    iput-object p1, p0, Ld/ae;->c:Ljava/nio/charset/Charset;

    .line 117
    return-void
.end method


# virtual methods
.method public a()Ld/ad;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ld/ad;

    iget-object v1, p0, Ld/ae;->a:Ljava/util/List;

    iget-object v2, p0, Ld/ae;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Ld/ad;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v7, p0, Ld/ae;->a:Ljava/util/List;

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Ld/ae;->c:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Ld/ai;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v7, p0, Ld/ae;->b:Ljava/util/List;

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Ld/ae;->c:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Ld/ai;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ld/ae;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 126
    iget-object v7, p0, Ld/ae;->a:Ljava/util/List;

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Ld/ae;->c:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Ld/ai;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v7, p0, Ld/ae;->b:Ljava/util/List;

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Ld/ae;->c:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Ld/ai;->a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object p0
.end method
