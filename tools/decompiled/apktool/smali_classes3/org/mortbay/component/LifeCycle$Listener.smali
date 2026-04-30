.class public interface abstract Lorg/mortbay/component/LifeCycle$Listener;
.super Ljava/lang/Object;
.source "LifeCycle.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract lifeCycleFailure(Lorg/mortbay/component/LifeCycle;Ljava/lang/Throwable;)V
.end method

.method public abstract lifeCycleStarted(Lorg/mortbay/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStarting(Lorg/mortbay/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStopped(Lorg/mortbay/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStopping(Lorg/mortbay/component/LifeCycle;)V
.end method
