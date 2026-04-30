.class Lg/a/a/a/f;
.super Landroid/view/LayoutInflater;
.source "CalligraphyLayoutInflater.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Lg/a/a/a/d;

.field private d:Z

.field private e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.webkit."

    aput-object v2, v0, v1

    sput-object v0, Lg/a/a/a/f;->a:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/a/f;->d:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    .line 42
    iput p3, p0, Lg/a/a/a/f;->b:I

    .line 43
    new-instance v0, Lg/a/a/a/d;

    invoke-direct {v0, p3}, Lg/a/a/a/d;-><init>(I)V

    iput-object v0, p0, Lg/a/a/a/f;->c:Lg/a/a/a/d;

    .line 44
    invoke-direct {p0, p4}, Lg/a/a/a/f;->a(Z)V

    .line 45
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-static {}, Lg/a/a/a/a;->a()Lg/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/a/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object p2

    .line 199
    :cond_1
    if-nez p2, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 201
    const-class v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "mConstructorArgs"

    invoke-static {v0, v1}, Lg/a/a/a/p;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    .line 203
    :cond_2
    iget-object v0, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Lg/a/a/a/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 204
    aget-object v1, v0, v3

    .line 208
    aput-object p4, v0, v3

    .line 209
    iget-object v2, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v2, p0, v0}, Lg/a/a/a/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p3, v2, p5}, Lg/a/a/a/f;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 214
    aput-object v1, v0, v3

    .line 215
    iget-object v1, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, v0}, Lg/a/a/a/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 214
    aput-object v1, v0, v3

    .line 215
    iget-object v1, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, v0}, Lg/a/a/a/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v2

    aput-object v1, v0, v3

    .line 215
    iget-object v1, p0, Lg/a/a/a/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, v0}, Lg/a/a/a/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v2
.end method

.method static synthetic a(Lg/a/a/a/f;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lg/a/a/a/f;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 106
    iget-boolean v0, p0, Lg/a/a/a/f;->d:Z

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lg/a/a/a/a;->a()Lg/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lg/a/a/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_2

    .line 111
    iput-boolean v6, p0, Lg/a/a/a/f;->d:Z

    goto :goto_0

    .line 115
    :cond_2
    const-class v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "setPrivateFactory"

    .line 116
    invoke-static {v0, v1}, Lg/a/a/a/p;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lg/a/a/a/g;

    .line 121
    invoke-virtual {p0}, Lg/a/a/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    iget-object v5, p0, Lg/a/a/a/f;->c:Lg/a/a/a/d;

    invoke-direct {v4, v0, p0, v5}, Lg/a/a/a/g;-><init>(Landroid/view/LayoutInflater$Factory2;Lg/a/a/a/f;Lg/a/a/a/d;)V

    aput-object v4, v2, v3

    .line 119
    invoke-static {p0, v1, v2}, Lg/a/a/a/p;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 123
    :cond_3
    iput-boolean v6, p0, Lg/a/a/a/f;->d:Z

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 68
    if-eqz p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lg/a/a/a/f;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/a/a/a/f;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lg/a/a/a/i;

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lg/a/a/a/f;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/a/a/a/f;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 77
    :cond_2
    invoke-virtual {p0}, Lg/a/a/a/f;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/a/a/a/f;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v0, v0, Lg/a/a/a/h;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lg/a/a/a/f;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/a/a/a/f;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lg/a/a/a/f;

    iget v1, p0, Lg/a/a/a/f;->b:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lg/a/a/a/f;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lg/a/a/a/f;->a()V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lg/a/a/a/f;->c:Lg/a/a/a/d;

    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lg/a/a/a/f;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2, p3}, Lg/a/a/a/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    sget-object v2, Lg/a/a/a/f;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 164
    :try_start_0
    invoke-virtual {p0, p1, v4, p2}, Lg/a/a/a/f;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 172
    :cond_1
    iget-object v1, p0, Lg/a/a/a/f;->c:Lg/a/a/a/d;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lg/a/a/a/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 165
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 2

    .prologue
    .line 85
    instance-of v0, p1, Lg/a/a/a/h;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lg/a/a/a/h;

    iget-object v1, p0, Lg/a/a/a/f;->c:Lg/a/a/a/d;

    invoke-direct {v0, p1, p0, v1}, Lg/a/a/a/h;-><init>(Landroid/view/LayoutInflater$Factory;Lg/a/a/a/f;Lg/a/a/a/d;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 96
    instance-of v0, p1, Lg/a/a/a/i;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lg/a/a/a/i;

    iget-object v1, p0, Lg/a/a/a/f;->c:Lg/a/a/a/d;

    invoke-direct {v0, p1, v1}, Lg/a/a/a/i;-><init>(Landroid/view/LayoutInflater$Factory2;Lg/a/a/a/d;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
