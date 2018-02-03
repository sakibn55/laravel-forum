<div class="panel panel-info" v-if="editing">
    <form action="">
        <div class="panel-heading">
            <div class="level">
                <input type="text" class="form-control" v-model="form.title">


            </div>
        </div>

        <div class="panel-body">
            <div class="form-group">
                <textarea name="" rows="10" class="form-control" v-model="form.body"></textarea>
            </div>
        </div>
    </form>

    <div class="panel-footer">
        <div class="label">
            <button class="btn btn-xs btn-primary" @click="editing = true" v-show="! editing">Edit</button>
            <button class="btn btn-xs btn-primary label-item" @click="update">Update</button>

            <button class="btn btn-xs btn-danger label-item" @click="resetForm">Cancel</button>
            @can ('update', $thread)

                <form action="{{ $thread->path() }}" method="POST" class=" label ml-a">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}

                    <button type="submit" class="btn btn-link">Delete Thread</button>
                </form>
            @endcan
        </div>

    </div>
</div>



<div class="panel panel-info" v-else>
    <div class="panel-heading">
        <div class="level">

            <img src="{{ $thread->creator->avatar_path }}" alt="{{$thread->creator->name}}" width="25" height="25"
                 class="mr-1">

            <span class="flex">
                <a href="{{ route('profile', $thread->creator) }}">{{ $thread->creator->name }}</a> posted:
                <span v-text="form.title"></span>

            </span>
        </div>
    </div>

    <div class="panel-body" v-text="form.body" >
        {{ $thread->body }}
    </div>
    @can ('update', $thread)
        <div class="panel-footer">
            <button class="btn btn-xs btn-primary" @click="editing = true">Edit</button>
        </div>
    @endcan
</div>
