.class public Lcom/a/a/a/f/b;
.super Ljava/lang/Object;
.source "JqLog.java"


# static fields
.field private static a:Lcom/a/a/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 11
    invoke-static {}, Lcom/a/a/a/f/b;->a()V

    .line 12
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/a/a/a/f/c;

    invoke-direct {v0}, Lcom/a/a/a/f/c;-><init>()V

    invoke-static {v0}, Lcom/a/a/a/f/b;->a(Lcom/a/a/a/f/a;)V

    .line 41
    return-void
.end method

.method public static a(Lcom/a/a/a/f/a;)V
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/a/a/a/f/b;->a:Lcom/a/a/a/f/a;

    .line 45
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/a/a/a/f/b;->a:Lcom/a/a/a/f/a;

    invoke-interface {v0, p0, p1}, Lcom/a/a/a/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/a/a/a/f/b;->a:Lcom/a/a/a/f/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/a/a/a/f/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/a/a/a/f/b;->a:Lcom/a/a/a/f/a;

    invoke-interface {v0, p0, p1}, Lcom/a/a/a/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/a/a/a/f/b;->a:Lcom/a/a/a/f/a;

    invoke-interface {v0}, Lcom/a/a/a/f/a;->a()Z

    move-result v0

    return v0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/a/a/a/f/b;->a:Lcom/a/a/a/f/a;

    invoke-interface {v0, p0, p1}, Lcom/a/a/a/f/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method
