.class public Lcom/b/a/g;
.super Lcom/b/a/e;
.source "GenericTranscodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/e",
        "<TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/b/a/q;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/h;Ljava/lang/Class;Lcom/b/a/d/c/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/e/q;Lcom/b/a/e/i;Lcom/b/a/q;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/h;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/b/a/d/c/s",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/b/a/e/q;",
            "Lcom/b/a/e/i;",
            "Lcom/b/a/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/b/a/d/d/f/e;->b()Lcom/b/a/d/d/f/c;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/b/a/g;->a(Lcom/b/a/h;Lcom/b/a/d/c/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)Lcom/b/a/g/f;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;)V

    .line 62
    iput-object p4, p0, Lcom/b/a/g;->g:Lcom/b/a/d/c/s;

    .line 63
    iput-object p5, p0, Lcom/b/a/g;->h:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/b/a/g;->i:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/b/a/g;->j:Lcom/b/a/q;

    .line 66
    return-void
.end method

.method private static a(Lcom/b/a/h;Lcom/b/a/d/c/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)Lcom/b/a/g/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/h;",
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;)",
            "Lcom/b/a/g/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/b/a/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/g/b;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/b/a/g/e;

    invoke-direct {v1, p1, p4, v0}, Lcom/b/a/g/e;-><init>(Lcom/b/a/d/c/s;Lcom/b/a/d/d/f/c;Lcom/b/a/g/b;)V

    return-object v1
.end method
