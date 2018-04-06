<!doctype html>
<html lang="en">

<head>
@include('include.head')
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="{!! asset('assets/img/sidebar-1.jpg')!!}">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo">
                <a href="" class="simple-text">
                    ENT
                </a>
            </div>
@include('include.side')
        </div>
        <div class="main-panel">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header" data-background-color="purple">
                                    <h4 class="title">PENS TV Table</h4>
                                    <p class="category">All Data PENS TV</p>
                                </div>
                                <div class="card-content table-responsive">
                                    <table id="tabel-data" class="table">
                                        <thead class="text-primary">
                                            <th>Kategori</th>
                                            <th>Username</th>
                                            <th>Judul</th>
                                            <th>Link</th>
                                            <th>Tanggal Rilis</th>
                                            <th>Aksi</th>
                                        </thead>
                                        <tbody>
                                            @foreach($data as $u)
                                            <tr>
                                              <td>{{ $u->kategori->KAT_NAMA }}</td>
                                              <td>{{ $u->user->USER_NAME }}</td>
                                              <td>{{ $u->TV_NAMA }}</td>
                                              <td>{{ $u->TV_LINK }}</td>
                                              <td>{{ $u->TV_TGL_RILIS }}</td>
                                              <td>
                                                <a href="{{ route('penstv.edit', $u->TV_ID) }}"><button class="btn btn-success">Edit</button></a>
                                                <form method="POST" action="http://api2.dev.ent.pens.ac.id/public/penstv/{{$u->TV_ID}}">
                                                  {{ csrf_field() }}
                                                  {{ method_field('DELETE') }}
                                                  <button class="btn btn-danger" type="submit">Delete</button>
                                                </form>
                                              </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

@include('include.footer')

</html>
