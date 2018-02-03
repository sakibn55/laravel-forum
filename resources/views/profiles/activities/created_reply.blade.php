@component('profiles.activities.activity')
    @slot('heading')
        {{ $profileUser->name }} replied to ->
        <a style="color:#fffdfdad" href="{{ $activity->subject->thread->path() }}">"{{ $activity->subject->thread->title }}"</a>
    @endslot

    @slot('body')
        {!! $activity->subject->body !!}
    @endslot
@endcomponent