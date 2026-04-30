.class public Lcom/h/a/a;
.super Ljava/lang/Object;
.source "TypefaceCollection.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/h/a/a;->a:Landroid/util/SparseArray;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/h/a/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/h/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/h/a/a;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/h/a/a;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lcom/h/a/a;->c(I)V

    return-void
.end method

.method private static c(I)V
    .locals 2

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid typeface style! Have to be one of Typeface.NORMAL, Typeface.BOLD, Typeface.ITALIC or Typeface.BOLD_ITALIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    return-void

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(I)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Lcom/h/a/a;->c(I)V

    .line 120
    iget-object v0, p0, Lcom/h/a/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method
